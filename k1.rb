#!/usr/bin/env ruby

require 'test/unit'

class FooTest < Test::Unit::TestCase

  def test_broken
    foo = Foo.new
    assert_equal("Foo.bar", foo.bar)
  end

end

class Foo

  def bar
    "Foo.bar"
  end

end