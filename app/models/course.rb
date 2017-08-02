class Course < ActiveRecord::Base

  WEEKDAYS = [['M', 'Monday'], ['T', 'Tuesday'], ['W', 'Wednesday'], ['TH', 'Thursday'], ['F', 'Friday']]
  SEMESTER = {'spring' => :spring, 'summer' => :summer, 'fall' => :fall, 'winter' => :winter}

  # def session
  #
  #   return @session
  #   # @session = "Tuesday_10:30_3/23/17"
  # end

  def get_weekdays
    days = days_of_week
    days_full = Set.new
    WEEKDAYS.each do |(abbr,full)|
      if days.include? abbr
        # puts abbr
        # puts full
        days_full.add(full)
      end
    end
    return days_full
  end

  def get_inputs
    # @session = session
    # puts @session
    time = "_" + time_of_day[0,2] + ":" + time_of_day[2,3] #16:30
    days = get_weekdays
    sem = SEMESTER[semester]
    # date = "3/28/17"
    inputs ||= []
    days.each do |day|
      course = day + time
      inputs += (Input.for_course(course) & Input.for_season(sem))
    end
    return inputs
  end

  def get_input_dates
    @inputs = get_inputs
    @available_dates = @inputs.map{|o| o.get_date}.sort.uniq
  end

  def get_inputs_on_date(date)
    @inputs_for_course = self.get_inputs
    date = date[0,8]
    @inputs_for_date = Input.for_date(date)
    @inputs_for_course_on_date = @inputs_for_course & @inputs_for_date
  end

end
