defmodule Fac do
  @moduledoc """
    Documentation for Fac
  """

  @doc """

  # Example
  iex(1)> Fac.torial!(5)
  120
  """

  @type nums :: pos_integer()

  @spec torial!(@nums()) :: @nums()
  def torial!(0), do: 1

  @spec torial!(@nums()) :: @nums()
  def torial!(n), do: torial!(n, 1)

  @spec torial!(@nums(), @nums()) :: @nums()
  defp torial!(0, acc), do: acc

  @spec torial!(@nums(), @nums()) :: @nums()
  defp torial!(n, acc), do: torial!(n - 1, acc * n)
end
