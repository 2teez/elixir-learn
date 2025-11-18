defmodule Ask do
  @moduledoc """
  Documentation for `Ask`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Ask.hello()
      :world

  """
  def line() do
    planet = get_planet(get_planet())
    distance = get_distance()
    Drop.fall_velocity(planet, distance)
  end

  defp get_planet() do
    IO.puts("""
    Which Planet are you on:
    1. Earth,
    2. Earth's Moon,
    3. Mars ?
    """)

    IO.gets("Which? > ")
    |> String.first()
  end

  defp get_distance() do
    IO.gets("Enter distance> ")
    |> String.trim()
    |> String.to_integer()
  end

  defp get_planet("1"), do: :earth
  defp get_planet("2"), do: :moon
  defp get_planet("3"), do: :mars
end
