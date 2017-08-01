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

  end

end
