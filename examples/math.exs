defmodule Math do
  @moduledoc """
    Documentation for Math
  """

  def sum([]), do: 0
  def sum([h | t]) when is_integer(h) and is_list(t), do: h + sum(t)

  def sum_tail([]), do: 0
  def sum_tail([h | t]) when is_integer(h) and is_list(t), do: sum_tail(t, h)
  defp sum_tail([], acc), do: acc
  defp sum_tail([h | t], acc) when is_integer(h) and is_list(t), do: sum_tail(t, acc + h)
end

defmodule Math.Sum do
  def up_to(0), do: 0
  def up_to(n) when is_integer(n), do: n + up_to(n - 1)

  def up_to_tail(0), do: 0
  def up_to_tail(n) when is_integer(n), do: up_to_tail(n, 0)
  defp up_to_tail(0, acc), do: acc
  defp up_to_tail(n, acc) when is_integer(n), do: up_to_tail(n - 1, acc + n)
end
