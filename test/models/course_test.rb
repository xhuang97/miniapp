require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  context "Within context" do
    setup do
      create_inputs
      create_courses
    end

    teardown do
      destroy_inputs
      destroy_courses
    end

    should "have a working method called get_inputs" do
      assert_equal ["testingid"], @rails.get_inputs.map{|o| o._id}
    end

  end

end
