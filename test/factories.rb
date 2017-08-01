FactoryGirl.define do
  factory :input do
      _id "fypRAXH4raqEfSZHG"
      dateTime "1490279428334"
      type "teacher begin talking"
      sessionId "random"
      sessionDesc "Tuesday_10:30_3/23/17"
      sessionCond 2
      isUndo false
  end

  factory :course do
      ta_name 'ta test'
      course_num '12345'
      days_of_week 'M'
      time_of_day '1000'
  end
end
