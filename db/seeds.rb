# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

courses = Course.create([{ta_name: 'ta1', course_num: '21127', days_of_week: 'MTWTHF', time_of_day: '1030'},
  {ta_name: 'ta2', course_num: '21259', days_of_week: 'MTWTHF', time_of_day: '0900'},
  {ta_name: 'ta3', course_num: '70122', days_of_week: 'MTWTHF', time_of_day: '0130'}])
