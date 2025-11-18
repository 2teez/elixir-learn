defmodule Countup do
  @moduledoc """
    Documentation for Countup
  """

  @doc """

  # Example
   iex> Countup.count(5, -1)
   5
   4
   3
   2
   1
   0
   -1
   Blast-off
   :ok
  """

  def count(from, to) when from >= to do
    IO.puts(from)
    count(from - 1, to)
  end

  def count(_from, _to) do
    IO.puts("Blast-off...")
  end
end
