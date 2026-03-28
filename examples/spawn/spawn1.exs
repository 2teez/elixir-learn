defmodule Spawn1 do
  @moduledoc """
    Documentation for Spawn1
  """

  @doc """
  # Example
  """

  def client() do
    pid = spawn(Spawn1, :greet, [])
    send(pid, {self(), "world"})

    receive do
      {:ok, msg} ->
        IO.puts(msg)
    end
  end

  def greet() do
    receive do
      {pid, msg} ->
        send(pid, {:ok, "Hello, #{msg}"})
    end

    greet()
  end
end
