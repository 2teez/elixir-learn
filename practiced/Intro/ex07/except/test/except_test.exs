defmodule ExceptTest do
  use ExUnit.Case, async: true
  doctest Except

  test "check mars gravitational force" do
    assert Except.get_gravity(:mars) == 3.71
  end

  test "test the velocity fall from the earth" do
    calculated = Except.fall_velocity(%Planet{name: :earth, distance: 20})
    assert_in_delta calculated, 19.79, 0.05, "Result #{calculated} not within delta 0.05"
  end

  test "test the velocity fall from the earth's moon" do
    assert Except.fall_velocity(Planet.new(:moon, 20)) ==
             8.0
  end
end
