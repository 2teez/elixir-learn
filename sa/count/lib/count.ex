defmodule Count do
  @moduledoc """
  Documentation for `Count`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Count.hello()
      :world

  """
  def countdown(n) when n == 0, do: IO.puts("Blast off!")
  def countdown(n) do
    IO.puts(n)
    countdown(n - 1)
  end

  defp countup(n, limit) when n == limit, do: IO.puts("Done!")
  defp countup(n, limit) do
    IO.puts(n)
    countup(n + 1, limit)
  end
  def countup(limit) do
    countup(1, limit)
  end
end
