defmodule Spawn2 do
  @moduledoc """
    Documentation for Spawn2
  """

  def greet do
    receive do
      {sender, msg} ->
        send(sender, {:ok, "Hello, #{msg}"})
        greet()
    end
  end
end

# client  of greet
pid = spawn(Spawn2, :greet, [])
send(pid, {self(), "world"})

receive do
  {:ok, msg} -> IO.puts(msg)
end

send(pid, {self(), "JavaMe"})

receive do
  {:ok, msg} -> IO.puts(msg)
after
  5000 -> IO.puts("No response")
end
