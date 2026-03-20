
    defmodule Fizzbuzz2 do
        @moduledoc """
          Documentation for Fizzbuzz2
        """

        @doc """

        # Example
        """

        def up_to(n), do: up_to_inner(n)

        defp up_to_inner(n, start_up \\1), do:
            Stream.unfold(start_up, fn n -> {n, n+1} end)
            |> Stream.map(&fizzbuzz/1)
            |> Enum.take(n)


        defp fizzbuzz(n) do
            case {rem(n, 3), rem(n, 5)} do
                {0, 0} -> "FizzBuzz"
                {0, _} -> "Fizz"
                {_, 0} -> "Buzz"
                _      -> n
            end
        end
    end
