class Input < ActiveRecord::Base

  # disable STI
  self.inheritance_column = :_type_disabled

  # custom primary key
  self.primary_key = :_id

  # scope :for_color,    ->(color) { where("color like ?", "%#{color.downcase}%") }
  scope :for_sessionDesc,      ->(session) { where("sessionDesc LIKE ?", "%#{session}%") }


  # validations
  validates :_id, presence: true
  # , uniqueness: { case_sensitive: true }

  # def get_date
  #   @datetime = self.dateTime
  #   @date = @datetime.strftime("%m/%d/%Y")
  # end

  def get_date
    dateTime = self.dateTime.to_i # convert to int
    dateTime_d = Time.at(dateTime/1000) # convert to date
    # self.dateTime = dateTime_d.strftime('%Y-%m-%d %H:%M:%S.%L %z')
    self.dateTime = dateTime_d.strftime('_%A_%m/%d/%y')
  end


end
