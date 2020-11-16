require 'test_helper'
include DronesHelper

class DronesHelperTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'calculates final drone position' do
    assert_equal "(5, 5)",
                 result("NNNNNLLLLL")
  end
end
