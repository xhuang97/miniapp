require 'test_helper'

class InputTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should validate_presence_of(:_id)

  context "Within context" do
    setup do
      create_inputs
      create_courses
    end

    teardown do
      destroy_inputs
      destroy_courses
    end

    should "have a working scope called for_sessionDesc" do
      assert_equal ["testingid"], Input.for_sessionDesc("Tuesday_10:30_3/20/17").map{|o| o._id}
    end

    should "have a working method called get_season" do
      assert_equal :spring, @test_spring.get_season
      assert_equal :summer, @test_summer.get_season
    end

    should "have a working method called get_full_dateTime" do
      assert_equal "Tuesday_16:30", @test_spring.get_full_dateTime
      assert_equal "Thursday_09:00", @test_summer.get_full_dateTime
    end

    should "have a working scope called for_course" do
      assert_equal ["testingid3"], Input.for_course("Tuesday_16:30").map{|o| o._id}
      assert_equal ["testingid4"], Input.for_course("Thursday_09:00").map{|o| o._id}
    end

    should "have a working scope called for_season" do
      assert_equal ["testingid3"], Input.for_season(:spring).map{|o| o._id}
      assert_equal ["testingid4"], Input.for_season(:summer).map{|o| o._id}
    end

  end

end
