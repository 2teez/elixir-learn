defmodule Bounce do
  @moduledoc """
  Documentation for `Bounce`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Bounce.hello()
      :world

  """
  def report do
    receive do
      msg -> IO.puts("Receives #{msg}")
    end

    report()
  end

  def report(count) do
    receive do
      msg -> IO.puts("Receives: #{count} -> #{msg}")
    end

    report(count + 1)
  end

  def reporter(count \\ -1) do
    new_count =
      receive do
        msg ->
          IO.puts("Receives: #{count} -> #{msg}")
          count + 1
      end

    reporter(new_count)
  end
end
