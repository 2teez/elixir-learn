
    defmodule Mylist do
        @moduledoc """
          Documentation for Mylist
        """

        @doc """

        # Example
        """

        def mapsum([], _fun), do: 0
        def mapsum([h|t], fun), do: fun.(h) + mapsum(t, fun)

        defp checker(a, b)  do
          if (a > b), do: a, else: b
        end
        def max([]), do: 0
        def max([h|t]), do: checker(h, max(t))
    end
