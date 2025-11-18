defmodule Drop do
  import :math, only: [sqrt: 1]

  @moduledoc """
  Documentation for `Drop`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Drop.hello()
      :world

  """
  @spec fall_velocity(number()) :: float()

  def fall_velocity(distance) do
    sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(distance, gravity) do
    sqrt(2 * distance * gravity)
  end
end
