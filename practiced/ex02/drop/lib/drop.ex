defmodule Drop do
  @moduledoc """
  Documentation for `Drop`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Drop.hello()
      :world

  """
  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end

  def mps_to_mph(mps) do
    2.23693629 * mps
  end

  def mps_to_kmh(mps) do
    3.6 * mps
  end
end
