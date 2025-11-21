defmodule ExceptTest do
  use ExUnit.Case
  doctest Except

  test "greets the world" do
    assert Except.hello() == :world
  end
end
