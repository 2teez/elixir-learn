defmodule Enums do
  @moduledoc """
  Documentation for `Enums`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Enums.hello()
      :world

  """
  def all?([], _value),  do: false
  def all?([h | t], value), do: h == value && all?(t, value)

  def each([], _fun), do: :ok
  def each([h | t], fun), do: fun.(h) && each(t, fun)

  def filter([], _func), do: []
  def filter([h | t], func), do: [func.(h) | filter(t, func)]

  def reverser(list), do: reverser(list, [])
  defp reverser([], acc), do: acc
  defp reverser([h | t], acc), do: reverser(t, [h | acc])

  def split(list, count), do: spliter(list, count, [])
  defp spliter([], _count, acc), do: {reverser(acc), []}
  defp spliter(list, 0, acc), do: {reverser(acc), list}
  defp spliter([h | t], count, acc), do: spliter(t, count - 1, [h | acc])
end
