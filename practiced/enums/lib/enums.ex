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
  def all?([], _fun), do: :true
  def all?([h|t], fun), do: fun.(h) && all?(t, fun)

  def each([], _fun), do: []
  def each([h|t], fun), do: [fun.(h) | each(t, fun)]

  def filter([], _fun), do: []
  def filter([h|t], fun) do
    if fun.(h) do
      [h | filter(t, fun)]
    else
        filter(t, fun)
    end
  end

  def reverse([]), do: []
  def reverse([h | t]), do: reverse(t) ++ [h]

  def count([]), do: 0
  def count([_|t]), do: 1 + count(t)

  def split(list, n), do: split(list, [], n)
  defp split(list1, list2, 0), do: {list2, list1}
  defp split([h|t], list2, n), do: split(t, list2 ++ [h], n-1)


  def take(list, n), do: take(list, [], n)
  defp take(_list, result, 0), do: result
  defp take([h|t], result, n), do: take(t, result ++ [h], n-1)
end
