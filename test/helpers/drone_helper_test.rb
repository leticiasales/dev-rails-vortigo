require 'test_helper'
include DronesHelper

class DronesHelperTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'calculates final drone position with move one' do
    assert_equal "(5, 5)",
                 position(moves(:one).action)
  end

  test 'calculates final drone position with move two' do
    assert_equal "(5, 5)",
                 position(moves(:two).action)
  end

  test 'calculates final drone position with move three' do
    assert_equal "(4, 4)",
                 position(moves(:three).action)
  end

  test 'calculates final drone position with move four' do
    assert_equal "(-5, -5)",
                 position(moves(:four).action)
  end

  test 'calculates final drone position with move eleven' do
    assert_equal "(21, 21)",
                 position(moves(:eleven).action)
  end

  test 'calculates final drone position with move twelve (error)' do
    assert_equal "(999, 999)",
                 position(moves(:twelve).action)
  end

  test 'calculates final drone position with move eighteen' do
    assert_equal "(0, 1)",
                 position(moves(:eighteen).action)
  end
end
