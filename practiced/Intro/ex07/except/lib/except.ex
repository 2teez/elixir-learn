defmodule Planet do
  @moduledoc """
  Planet structure with name and distance of the fall
  """
  defstruct name: "", distance: 0

  @type t :: %__MODULE__{
          name: atom(),
          distance: number()
        }

  @spec new(atom(), number()) :: t()
  def new(name, distance), do: %Planet{name: name, distance: distance}
end

defmodule Except do
  @moduledoc """
  Documentation for `Except`.
  """

  @type gravity :: float()

  @doc """
  fall_velocity

  ## Examples

      iex> Except.fall_velocity(%Planet{name: :earth, distance: 20})

  """
  @spec fall_velocity(Planet.t()) :: number()
  def fall_velocity(%Planet{name: name, distance: distance}) do
    fall_velocity(name, distance)
  end

  @spec fall_velocity(atom(), gravity()) :: number()
  defp fall_velocity(name, distance) do
    try do
      :math.sqrt(2 * get_gravity(name) * distance)
    rescue
      # we can specified all the cases of error that could occured
      error -> error
    end
  end

  @spec get_gravity(atom()) :: gravity()
  def get_gravity(name) do
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
