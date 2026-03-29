Code.require_file("math.exs", __DIR__)

ExUnit.start()

defmodule Math_test do
  use ExUnit.Case
  # doctest Math

  @moduledoc """
    Documentation for Math_test
  """

  test "sum up to 5" do
    assert Math.Sum.up_to(5) == 15
  end

  describe "sum up to using tail recurssion" do
    test "sum up to tail" do
      assert Math.Sum.up_to_tail(10) == 55
    end
  end
end
