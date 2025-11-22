defmodule Fizzbuzz do
  @moduledoc """
    Documentation for Fizzbuzz
  """

  @doc """

  # Example
  """

  @spec say(integer()) :: String.t()
  def say(n) do
    fizzbuzz(rem(n, 3), rem(n, 5), n)
  end

  @spec fizzbuzz(integer(), integer(), integer()) :: String.t()
  defp fizzbuzz(0, 0, _), do: "FizzBuzz"
  defp fizzbuzz(0, _, _), do: "Fizz"
  defp fizzbuzz(_, 0, _), do: "Buzz"
  defp fizzbuzz(_, _, k), do: to_string(k)
end
