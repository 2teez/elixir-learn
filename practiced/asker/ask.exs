
    defmodule Ask do
        @moduledoc """
          Documentation for Ask
        """

        @doc """

        # Example
        """

        def line() do
          import Drop, only: [fall_velocity: 1]
            planet = get_planet()
            distance = get_distance()
            velocity = fall_velocity({planet, distance})
            IO.puts("Velocity: #{velocity}")
        end

        def get_planet(), do:
          IO.gets("""
            which planet?
            1. Earth
            2. Earth's moon
            3. Mars
            """) |> String.first() |> char_to_planet

        def get_distance(),  do:
         IO.gets("distance: ") |> String.trim() |> String.to_float()


        defp char_to_planet(char) do
          case char do
            "1" -> :earth
            "2" -> :moon
            "3" -> :mars
          end
        end
    end
