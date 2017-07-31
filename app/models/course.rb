class Course < ActiveRecord::Base

  def get_inputs
    @date = self.date
    @inputs = Input.for_date(@date)
  end

end
