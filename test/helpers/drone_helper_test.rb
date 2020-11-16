require 'test_helper'
include DronesHelper

class DronesHelperTest < ActiveSupport::TestCase
   tests DronesHelper

  # test "the truth" do
  #   assert true
  # end

  test 'calculates final drone position' do
    assert_equal "(5, 5)",
                 result(moves(:one).action)
                 
    assert_equal "(5, 5)",
                 result(moves(:two).action)
                 
    assert_equal "(4, 4)",
                 result(moves(:three).action)
                 
    assert_equal "(-5, -5)",
                 result(moves(:four).action)
                 
    assert_equal "(21, 21)",
                 result(moves(:eleven).action)
                 
    assert_equal "(999, 999)",
                 result(moves(:twelve).action)

    assert_equal "(0, 1)",
                 result(moves(:eighteen).action)
  end
end
