class Course < ActiveRecord::Base

  ROLES = [['Administrator', :admin],['Manager', :manager],['Shipper', :shipper],['Customer',:customer]]

  WEEKDAYS = [['M', :monday], ['T', :tuesday], ['W', :wednesday], ['TH', :thursday], ['F', :friday]]


  # def session
  #
  #   return @session
  #   # @session = "Tuesday_10:30_3/23/17"
  # end

  def get_inputs
    # @session = session
    # puts @session
    time = "_" + time_of_day[0,2] + ":" + time_of_day[2,3] + "_"
    day = "Tuesday"
    date = "3/28/17"
    session = day + time + date
    puts session
    Input.for_sessionDesc(session)
  end

end
