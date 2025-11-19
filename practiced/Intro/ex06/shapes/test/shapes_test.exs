defmodule ShapesTest do
  use ExUnit.Case
  doctest Shapes

  test "greets the world" do
    assert Shapes.hello() == :world
  end
end
