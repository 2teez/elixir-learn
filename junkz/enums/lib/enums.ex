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

  def split(list, count), do: split(list, count, [])
  defp split([], _count, acc), do: {reverser(acc), []}
  defp split(list, 0, acc), do: {reverser(acc), list}
  defp split([h | t], count, acc), do: split(t, count - 1, [h | acc])

  def flatten(list), do: flatten(list, []) |> reverser()
  defp flatten([], acc), do: acc
  defp flatten([h | t], acc) do
    if is_list(h) do
      flatten(t, flatten(h, acc))
    else
      flatten(t, [h | acc])
    end
  end

end
