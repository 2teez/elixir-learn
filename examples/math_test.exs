Code.require_file("math.exs", __DIR__)

ExUnit.start()

defmodule Math_test do
  use ExUnit.Case

  @moduledoc """
    Documentation for Math_test
  """

  test "sum up to 5" do
    assert Math.Sum.up_to(5) == 15
  end
end
