defmodule DomathsTest do
  use ExUnit.Case
  doctest Domaths

  test "greets the world" do
    assert Domaths.hello() == :world
  end
end
