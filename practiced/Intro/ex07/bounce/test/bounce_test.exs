defmodule BounceTest do
  use ExUnit.Case
  doctest Bounce

  test "greets the world" do
    assert Bounce.hello() == :world
  end
end
