class Input < ActiveRecord::Base

  scope :for_date,      ->(date) { where(get_date == date) }

  def get_date
    @datetime = self.datetime
    @date = @datetime.strftime("%m/%d/%Y")
  end

end
