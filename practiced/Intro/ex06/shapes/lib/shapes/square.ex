defmodule Shapes.Square do
  @moduledoc """
    Documentation for Square
  """

  @doc """

  # Example
  """

  defstruct side: 0.0
end

defimpl Calculate, for: Shapes.Square do
  def area(%Shapes.Square{side: side}), do: side * side
  def perimeter(%Shapes.Square{side: side}), do: 4 * side
end
