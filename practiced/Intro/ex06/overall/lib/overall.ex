defmodule Overall do
  @moduledoc """
  Documentation for `Overall`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Overall.hello()
      :world

  """
  # should return error
  def product([]), do: 0
  def product(list), do: product(list, 1)

  defp product([], acc), do: acc

  defp product([h | t], acc) do
    product(t, h * acc)
  end

  def sumup([]), do: 0
  def sumup(list), do: sumup(list, 0)

  defp sumup([], acc), do: acc

  defp sumup([h | t], acc) do
    sumup(t, h + acc)
  end

  def countit([]), do: 0
  def countit(list), do: countit(list, 0)

  defp countit([], acc), do: acc

  defp countit([_ | t], acc), do: countit(t, acc + 1)
end
