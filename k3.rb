# This is just a dummy example.
# Adapt the code to your code kata
# before you press "Run" the first
# time.

#!/usr/bin/env ruby

require 'test/unit'

class FooTest < Test::Unit::TestCase

  def roman(num)
    if (num > 99)
      "C" + roman(num - 100)
    elsif (num > 89)
      "XC" + roman(num - 90)
    elsif (num > 49)
      "L" + roman(num - 50)
    elsif (num > 39)
      "XL" + roman(num - 40)
    elsif (num > 9)
      "X" + roman(num - 10)
    elsif (num == 9)
      "IX"
    elsif (num > 4)
      "V" + roman(num - 5)
    elsif (num == 4)
      "IV"
    elsif (num > 0)
      "I" + roman(num - 1)
    else
      ""
    end
  end

  def test_99
    assert_equal("XCIX", roman(99))
  end

  def test_89
    assert_equal("LXXXIX", roman(89))
  end

  def test_51
    assert_equal("LI", roman(51))
  end

  def test_49
    assert_equal("XLIX", roman(49))
  end

  def test_45
    assert_equal("XLV", roman(45))
  end

  def test_30
    assert_equal("XXX", roman(30))
  end

  def test_19
    assert_equal("XIX", roman(19))
  end

  def test_10
    assert_equal("X", roman(10))
  end

  def test_9
    assert_equal("IX", roman(9))
  end

  def test_8
    assert_equal("VIII", roman(8))
  end

  def test_7
    assert_equal("VII", roman(7))
  end

  def test_6
    assert_equal("VI", roman(6))
  end

  def test_5
    assert_equal("V", roman(5))
  end

  def test_4
    assert_equal("IV", roman(4))
  end

  def test_3
    assert_equal("III", roman(3))
  end

  def test_2
    assert_equal("II", roman(2))
  end

  def test_1
    assert_equal("I", roman(1))
  end

end