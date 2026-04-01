defmodule Funs do
  @moduledoc """
    Documentation for Funs
  """

  @doc """
  Fetches the element at the given index from the list.

  Returns `{:ok, element}` if the index is valid, or `:error` if the index is out of bounds.
  # Example
  iex> Funs.fetch([1, 2, 3], 0)
  {:ok, 1}
  iex> Funs.fetch([1, 2, 3], 3)
  :error
  """

  @spec fetch(list(), integer()) :: {:ok, integer()} | :error
  def fetch(list, index), do: fetch(list, index, 0)
  defp fetch([], _index, _count), do: :error

  defp fetch([head | tail], index, count) do
    if index == count, do: {:ok, head}, else: fetch(tail, index, count + 1)
  end
end
