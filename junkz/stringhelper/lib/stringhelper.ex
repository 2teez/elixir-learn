defmodule Stringhelper do
  @moduledoc """
  Documentation for `Stringhelper`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Stringhelper.palin?("12321")
      true

  """
  @spec palin?(String.t()) :: String.t()
  def palin?(str) do
    str == str |> String.to_charlist |> reverse |> to_string
  end

  defp reverse([]), do: []
  defp reverse([h | t]), do: [reverse(t) | [h]]
end
