# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

courses = Course.create([{ta_name: 'TA127', course_num: '21127', days_of_week: 'MTWTHF', time_of_day: '0900'},
  {ta_name: 'TA259', course_num: '21259', days_of_week: 'MTWTHF', time_of_day: '0900'},
  {ta_name: 'TA122', course_num: '70122', days_of_week: 'MTWTHF', time_of_day: '1030'},
  {ta_name: 'TA1030', course_num: '21127', days_of_week: 'TTH', time_of_day: '1030'},
  {ta_name: 'TA1230', course_num: '18202', days_of_week: 'TTH', time_of_day: '1230'},
  {ta_name: 'TA1630', course_num: '21256', days_of_week: 'T', time_of_day: '1630'}])
