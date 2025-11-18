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
  def countdown_if(from) do
    if from > 0 do
      IO.inspect(from)
      countdown_if(from - 1)
    else
      IO.puts("Blast-off...")
    end
  end

  def countdown(from) when from > 0 do
    IO.inspect(from)
    countdown(from - 1)
  end

  def countdown(_from) do
    IO.puts("Blast-off!..")
  end

  def countup(to) do
    countup(1, to)
  end

  def countup(from, to) when from <= to do
    IO.inspect(from)
    countup(from + 1, to)
  end

  def countup(_from, _to) do
    IO.puts("Done...")
  end
end
