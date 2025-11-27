defmodule StringhelperTest do
  use ExUnit.Case
  doctest Stringhelper

  test "if the string is palindrone" do
    assert Stringhelper.palin? "hello, world" == "hello, world"
  end
end
