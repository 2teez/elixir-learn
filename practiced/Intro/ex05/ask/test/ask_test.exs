defmodule AskTest do
  use ExUnit.Case
  doctest Ask

  test "greets the world" do
    assert Ask.hello() == :world
  end
end
