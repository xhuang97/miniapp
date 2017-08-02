class Input < ActiveRecord::Base

  # disable STI
  self.inheritance_column = :_type_disabled

  # custom primary key
  self.primary_key = :_id

  # scope :for_color,    ->(color) { where("color like ?", "%#{color.downcase}%") }
  scope :for_sessionDesc,      ->(session) { where("sessionDesc LIKE ?", "%#{session}%") }
  # scope :for_course,  ->(course) { where("#{get_full_dateTime} LIKE ?", "%#{course}%")}
  # scope :for_season,  ->(season) { where(get_season == season)}

  # validations
  validates :_id, presence: true
  # , uniqueness: { case_sensitive: true }

  # def get_date
  #   @datetime = self.dateTime
  #   @date = @datetime.strftime("%m/%d/%Y")
  # end

  def self.for_course(course)
    # puts course
    Input.all.select {|o| o.get_day_time == course }
  end

  def self.for_season(season)
    Input.all.select {|o| o.get_season == season}
  end

  def self.for_date(date)
    puts date
    Input.all.select {|o| o.get_full_dateTime.to_s.include? date}
  end

  def get_season
    dateTime = self.dateTime.to_i # convert to int
    d = Time.at(dateTime/1000) # convert to date
    # Not sure if there's a neater expression. yday is out due to leap years
    day_hash = d.month * 100 + d.mday
    case day_hash
    when 101..301 then :winter
    when 302..530 then :spring
    when 601..830 then :summer
    when 901..1231 then :fall
    end
  end

  def get_day_time
    dateTime = self.dateTime.to_i # convert to int
    dateTime = Time.at(dateTime/1000) # convert to date
    hour = dateTime.strftime('%H%M').to_i
    ahour = hour.to_s
    case hour
    when 900..1025 then ahour = "0900"
    when 1030..1155 then ahour = "1030"
    when 1230..1355 then ahour = "1230"
    when 1630..1755 then ahour = "1630"
    end
    weekday = dateTime.strftime('%A_').to_s
    course = weekday + ahour[0,2] + ":" + ahour[2,3] #Tuesday_10:30
    return course
  end

  def get_full_dateTime
    dateTime = self.dateTime.to_i # convert to int
    dateTime = Time.at(dateTime/1000) # convert to date
    dateTime = dateTime.strftime('%m/%d/%y %H:%M:%S')
  end

  def get_date
    dateTime = self.dateTime.to_i # convert to int
    dateTime = Time.at(dateTime/1000) # convert to date
    dateTime = dateTime.strftime('%m/%d/%y %A')
  end


end
