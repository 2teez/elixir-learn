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
  @type err :: {:error, :unsupported_type}

  @spec palin?(String.t()) :: boolean | err
  def palin?(str) when is_bitstring(str) do
    str == str
    |> String.trim
    |> String.downcase
    |> String.to_charlist
    |> reverse |> to_string
  end

  @spec palin?(String.t()) :: boolean | err
  def palin?(_str),  do: {:error, :unsupported_type}


  defp reverse([]), do: []
  defp reverse([h | t]), do: [reverse(t) | [h]]
end
