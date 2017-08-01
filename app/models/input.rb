class Input < ActiveRecord::Base

  # disable STI
  self.inheritance_column = :_type_disabled

  # custom primary key
  self.primary_key = :_id

  scope :for_date,      ->(date) { where(get_date == date) }

  # validations
  validates :_id, presence: true,  uniqueness: { case_sensitive: true }

  def get_date
    @datetime = self.dateTime
    @date = @datetime.strftime("%m/%d/%Y")
  end

end
