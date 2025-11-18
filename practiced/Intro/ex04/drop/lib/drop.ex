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

  # show the case expression in elixir
  def fall_velocity(planet, distance) when distance >= 0 do
    gravity =
      case planet do
        :earth -> 9.8
        :moon -> 6.1
        :mars -> 3.71
      end

    :math.sqrt(2 * gravity * distance)
  end

  # show the cond expression in elixir
  def fall_velocity_with_cond(planet, distance) when distance >= 0 do
    gravity =
      case planet do
        :earth -> 9.8
        :moon -> 6.1
        :mars -> 3.71
      end

    velocity = :math.sqrt(2 * gravity * distance)

    cond do
      velocity == 0 -> :stable
      velocity < 5 -> :slow
      velocity > 5 and velocity < 10 -> :moving
      velocity >= 10 and velocity < 20 -> :fast
      velocity >= 20 -> :speedy
    end
  end

  # show the cond expression in elixir
  def fall_velocity_if(planet, distance) when distance >= 0 do
    gravity =
      case planet do
        :earth -> 9.8
        :moon -> 6.1
        :mars -> 3.71
      end

    velocity = :math.sqrt(2 * gravity * distance)

    if velocity > 20 do
      IO.puts("Look out below...")
    else
      IO.puts("Reasonable...")
    end
  end
end
