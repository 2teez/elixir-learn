defmodule Tester do
  @moduledoc """
  Documentation for `Tester`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Tester.fall_velocity(:earth, 23) |> Float.round(1)
      21.2

  """
  @spec fall_velocity(atom(), number()) :: number()
  def fall_velocity(planet, distance) do
    gravity = case  planet do
      :earth -> 9.8
      :moon -> 1.6
      :mars -> 3.7
      :jupiter -> 24.7
      :saturn -> 10.4
      :uranus -> 8.7
      :neptune -> 11.1
        #_ -> 0.0
    end
    :math.sqrt(2 * gravity * distance)
  end
end
