defmodule Planet do
  defstruct name: "", distance: 0
end

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
  def fall_velocity(%Planet{name: name, distance: distance}) do
    fall_velocity(name, distance)
  end

  defp fall_velocity(name, distance) do
    try do
      :math.sqrt(2 * get_gravity(name) * distance)
    rescue
      # we can specified all the cases of error that could occured
      error -> error
    end
  end

  defp get_gravity(name) do
    case name do
      :earth ->
        9.8

      :moon ->
        1.6

      :mars ->
        3.71
        # with the catch all value default one would see the error
        # _ -> 9.8
    end
  end
end
