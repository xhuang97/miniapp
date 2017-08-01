require 'test_helper'

class InputTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should validate_presence_of(:_id)

end
