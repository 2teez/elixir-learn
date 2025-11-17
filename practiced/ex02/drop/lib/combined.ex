# convienience functions
defmodule Combined do
  @moduledoc """
    Documentation for Combined
  """

  @doc """

  # Example
  """

  # takes meters, returns miles per hour
  def height_to_mph(meters) do
    meters |> Drop.fall_velocity() |> Convert.mps_to_mph()
  end
end
