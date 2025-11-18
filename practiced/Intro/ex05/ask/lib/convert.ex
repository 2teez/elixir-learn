defmodule Convert do
  @moduledoc """
    Documentation for Convert
  """

  @doc """

  # Example
  """

  def absolute_value(number) when number < 0, do: -number
  def absolute_value(number), do: number
end
