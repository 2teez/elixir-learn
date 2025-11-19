defprotocol Calculate do
  @moduledoc """
    Documentation for Calculate
  """

  @doc "Calculate area of a shape"
  def area(shape)

  @doc "Calculate perimeter of a shape"
  def perimeter(shape)
end
