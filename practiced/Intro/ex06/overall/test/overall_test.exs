defmodule OverallTest do
  use ExUnit.Case
  doctest Overall

  test "greets the world" do
    assert Overall.hello() == :world
  end
end
