module Contexts
  module Courses

    def create_courses
      @test_course = FactoryGirl.create(:course, ta_name: "ta", days_of_week: "TTH", time_of_day: "1030")
      @sp21256 = FactoryGirl.create(:course, ta_name: "TA1630", days_of_week: "T", time_of_day: "1630", semester: "spring")
      @su21127 = FactoryGirl.create(:course, ta_name: "TA127", days_of_week: "MTWTHF", time_of_day: "0900", semester: "summer")
    end

    def destroy_courses
      @test_course.delete
      @sp21256.delete
      @su21127.delete
    end
  end
end
