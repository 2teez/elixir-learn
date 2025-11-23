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

defmodule Util.List do
  @moduledoc """
  Practice some list utility function in elixir
  """

  def mapsum(list, fun), do: mapsum(list, fun, 0)
  defp mapsum([], _fun, result), do: result

  defp mapsum([h | t], fun, result) do
    mapsum(t, fun, result + fun.(h))
  end
end

defmodule MyList do
  def mapsum([], _fun), do: 0
  def mapsum([h | t], fun), do: fun.(h) + mapsum(t, fun)

  def max([]), do: nil
  def max([h]), do: h

  def max([h | [hh | t]]) do
    if h > hh do
      max([h | t])
    else
      max([hh | t])
    end
  end
end

defmodule Main do
  def run do
    IO.puts(MyList.mapsum([1, 2, 3], &(&1 * &1)))
    IO.puts(Util.List.mapsum([1, 2, 3], &(&1 * &1)))
  end
end
