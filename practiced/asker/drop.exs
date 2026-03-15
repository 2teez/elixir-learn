
    defmodule Drop do
        @moduledoc """
          Documentation for Drop
        """

        @doc """

        # Example
        """

        def fall_velocity({planet, distance}) do
          fall_velocity(planet, distance)
        end

        defp fall_velocity(:earth, distance), do: :math.sqrt(2 * 9.8 * distance)
        defp fall_velocity(:moon, distance), do: :math.sqrt(2 * 1.6 * distance)
        defp fall_velocity(:mars, distance), do: :math.sqrt(2 * 3.7 * distance)
    end
