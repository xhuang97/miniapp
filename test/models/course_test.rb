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
      assert_equal ["testingid3", "testingid3b"], @sp21256.get_inputs.map{|o| o._id}
      assert_equal ["testingid4", "testingid4b"], @su21127.get_inputs.map{|o| o._id}
    end

    should "have a working method called get_inputs_on_date" do
      assert_equal ["testingid3"], @sp21256.get_inputs_on_date("03/21/17 Tuesday").map{|o| o._id}
      assert_equal ["testingid4"], @su21127.get_inputs_on_date("07/06/17 Tuesday").map{|o| o._id}
      assert_equal ["testingid4b"], @su21127.get_inputs_on_date("07/07/17 Tuesday").map{|o| o._id}
    end

  end

end
