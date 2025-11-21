defmodule Except do
  @moduledoc """
  Documentation for `Except`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Except.hello()
      :world

  """
  def fall_velocity(%Planet{name: name, gravity: gravity, distance: distance}) do
    fall_velocity(name, distance)
  end

  def fall_velocity(:earth, distance) do
    fall_velocity(:earth, distance, get_gravity(:earth))
  end

  def fall_velocity(:moon, distance) do
    fall_velocity(:moon, distance, get_gravity(:moon))
  end

  def fall_velocity(:mars, distance) do
    fall_velocity(:mars, distance, get_gravity(:mars))
  end

  defp fall_velocity(name, distance, gravity) do
    try do
      :math.sqrt(2 * get_gravity(name) * distance)
    rescue
      error -> error
    end
  end

  defp get_gravity(name \\ :earth) do
    gravity =
      case name do
        :earth -> 9.8
        :moon -> 1.6
        :mars -> 3.71
      end
  end
end

defmodule Planet do
  defstruct name: "" \\ :earth, gravity: 0.0 \\ 9.8, distance: 0
end
