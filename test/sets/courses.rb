module Contexts
  module Courses

    def create_courses
      @rails = FactoryGirl.create(:course, ta_name: "ta", days_of_week: "TTH", time_of_day: "1030")
    end

    def destroy_courses
      @rails.delete
    end
  end
end
