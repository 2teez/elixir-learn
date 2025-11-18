defmodule Fac do
  @moduledoc """
  Documentation for `Fac`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Fact.torial(5)
      120

  """
  def torial(0), do: 1

  def torial(n) do
    cond do
      n == 1 -> 1
      n > 1 -> n * torial(n - 1)
    end
  end

  def torial_case(0), do: 1

  def torial_case(n) do
    case n do
      1 -> 1
      _ -> n * torial_case(n - 1)
    end
  end

  # pattern matching
  def factorial(0), do: 1

  def factorial(n) when n > 0 do
    n * factorial(n - 1)
  end
end
