defmodule Mylist do
  @moduledoc """
    Documentation for Mylist
  """

  @doc """

  # Example
  """

  def maximum([]), do: nil
  def maximum([h | t]), do: maximum(t, h)
  defp maximum([], maxi), do: maxi
  defp maximum([h | t], maxi) when h > maxi, do: maximum(t, h)
  defp maximum([h | t], maxi) when h <= maxi, do: maximum(t, maxi)

  def minimum([]), do: nil
  def minimum([h | t]), do: minimum(t, h)
  defp minimum([], mini), do: mini
  defp minimum([h | t], mini) when h < mini, do: minimum(t, h)
  defp minimum([h | t], mini) when h >= mini, do: minimum(t, mini)
end
