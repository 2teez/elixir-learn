defmodule Shapes.Rectangle do
  @moduledoc """
    Documentation for Rectangle
  """

  @doc """

  # Example
  """
  defstruct width: 0.0, height: 0.0
end

defimpl Calculate, for: Shapes.Rectangle do
  def area(rec), do: rec.width * rec.height
  def perimeter(rec), do: 2 * (rec.width + rec.height)
end
