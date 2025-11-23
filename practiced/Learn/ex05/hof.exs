defmodule Hof do
  @moduledoc """
    Documentation for Hof
  """

  @doc """

  # Example
  """
  @type num :: integer()

  @spec sum_of_first(num()) :: num()
  def sum_of_first(0), do: 0

  @spec sum_of_first(num()) :: num()
  def sum_of_first(n), do: sum_of_first(n, 0)

  @spec sum_of_first(num(), num()) :: num()
  defp sum_of_first(0, acc), do: acc

  @spec sum_of_first(num(), num()) :: num()
  defp sum_of_first(n, acc), do: sum_of_first(n - 1, acc + n)

  @spec length_of(list()) :: num()
  def length_of([]), do: 0

  @spec length_of(list()) :: num()
  def length_of(list), do: length_of(list, 0)

  @spec length_of(list(), num()) :: num()
  def length_of([], acc), do: acc

  @spec length_of(list(), num()) :: num()
  def length_of([_ | t], acc), do: length_of(t, acc + 1)
end
