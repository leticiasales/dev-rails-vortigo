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

  test 'calculates final drone position with move five' do
    assert_equal "(-5, -5)",
                 position(moves(:five).action)
  end

  test 'calculates final drone position with move six' do
    assert_equal "(999, 999)",
                 position(moves(:six).action)
  end

  test 'calculates final drone position with move seven' do
    assert_equal "(1, 123)",
                 position(moves(:seven).action)
  end

  test 'calculates final drone position with move eight' do
    assert_equal "(1, 1)",
                 position(moves(:eight).action)
  end

  test 'calculates final drone position with move nine' do
    assert_equal "(1, 2)",
                 position(moves(:nine).action)
  end

  test 'calculates final drone position with move ten' do
    assert_equal "(21, 21)",
                 position(moves(:ten).action)
  end

  test 'calculates final drone position with move eleven' do
    assert_equal "(21, 21)",
                 position(moves(:eleven).action)
  end

  test 'calculates final drone position with move twelve (error)' do
    assert_equal "(999, 999)",
                 position(moves(:twelve).action)
  end

  test 'calculates final drone position with move thirteen (error)' do
    assert_equal "(999, 999)",
                 position(moves(:thirteen).action)
  end

  test 'calculates final drone position with move fourteen (error)' do
    assert_equal "(999, 999)",
                 position(moves(:fourteen).action)
  end

  test 'calculates final drone position with move fifteen (error)' do
    assert_equal "(999, 999)",
                 position(moves(:fifteen).action)
  end

  test 'calculates final drone position with move sixteen (error)' do
    assert_equal "(999, 999)",
                 position(moves(:sixteen).action)
  end

  test 'calculates final drone position with move seventeen (error)' do
    assert_equal "(999, 999)",
                 position(moves(:seventeen).action)
  end

  test 'calculates final drone position with move eighteen (error)' do
    assert_equal "(0, 1)",
                 position(moves(:eighteen).action)
  end
end
