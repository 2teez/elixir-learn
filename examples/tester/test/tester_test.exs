defmodule TesterTest do
  use ExUnit.Case, async: true
  doctest Tester

  test "Zero distance gives zero velocity" do
    assert Tester.fall_velocity(:earth, 0) == 0
  end

  test "Mars calculation correct" do
    assert Tester.fall_velocity(:mars, 10) == :math.sqrt(2 * 3.7 * 10)
  end

  test "Earth calculation correct" do
    calculated = Tester.fall_velocity(:earth, 5)
    assert_in_delta calculated, 9.8, 0.1, "Result of #{calculated} is not within 0.1 of 9.8"
  end

  test "negative distance causes error" do
    assert_raise ArithmeticError, fn -> Tester.fall_velocity(:earth, -5) end
  end
end
