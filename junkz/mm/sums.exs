
    defmodule Sums do
        @moduledoc """
          Documentation for Sums
        """

        @doc """

        # Example
        """

        def of(0), do: 0
        def of(n), do: n + of(n-1)

        def len([]), do: 0
        def len([_|t]), do: 1 + len(t)

        def sum([]), do: 0
        def sum([h|t]), do: h + sum(t)

        def reduce([], _fun, acc \\ 0), do: acc
        def reduce([h|t], fun, acc), do: reduce(t, fun, fun.(h, acc))
    end
