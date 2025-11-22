defmodule Domaths do
  @moduledoc """
  Documentation for `Domaths`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Domaths.hello()
      :world

  """
  def start() do
    receive do
      {:sum, [x, y], pid} -> send(pid, {:result, x + y})
    end

    start()
  end
end

pid = spawn(Domaths, :start, [])
send(pid, {:sum, [5, 8], self()})

receive do
  {:result, x} -> IO.puts(x)
end
