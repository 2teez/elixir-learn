defmodule Drop2 do
  @moduledoc """
    Documentation for Drop2
  """

  @doc """

  # Example
  """

  # practice tuple in elixir..
  def fall_velocity({planet, distance}) when distance >= 0 do
    fall_velocity(planet, distance)
  end

  defp fall_velocity(:earth, distance) do
    :math.sqrt(2 * 9.8 * distance)
  end

  defp fall_velocity(:moon, distance) do
    :math.sqrt(2 * 1.6 * distance)
  end

  defp fall_velocity(:mars, distance) do
    :math.sqrt(2 * 3.71 * distance)
  end
end
