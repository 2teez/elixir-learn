defmodule Drop do
  import :math, only: [sqrt: 1]

  @moduledoc """
    Documentation for Drop
  """

  @doc """

  # Example
  """

  def fall_velocity(where) do
    {planet, distance} = where
    fall_velocity(planet, distance)
  end

  def fall_velocity(planet, distance) do
    sqrt(2 * get_gravity(planet) * Convert.absolute_value(distance))
  end

  defp get_gravity(planet) do
    case planet do
      :earth -> 9.8
      :moon -> 6.1
      :mars -> 3.71
    end
  end
end
