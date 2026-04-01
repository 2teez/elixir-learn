defmodule Funs.Fetch do
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

  @spec fetch([t], integer()) :: {:ok, t} | :error when t: var
  def fetch(list, index), do: fetch(list, index, 0)
  defp fetch([], _index, _count), do: :error

  defp fetch([head | tail], index, count) do
    index =
      case index < 0 do
        true -> (tail |> length()) + index + 1
        false -> index
      end

    cond do
      index < 0 -> :error
      index == count -> {:ok, head}
      true -> fetch(tail, index, count + 1)
    end
  end
end

alias Funs.Fetch, as: Fetch

lt = 1..5 |> Enum.to_list()

-5..5
|> Enum.to_list()
|> Enum.each(fn x -> IO.inspect(Fetch.fetch(lt, x)) end)
