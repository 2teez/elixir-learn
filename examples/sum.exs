
    defmodule Summation do
        @moduledoc """
          Documentation for Sum
        """

        @doc """

        # Example
        """

        @spec sum(list()) :: integer

        def sum([]), do: 0
        def sum([h | t ]), do: h + sum(t)

        @spec tail_sum(list()) :: integer

        def tail_sum(lst), do: tail_sum(lst, 0)
        defp tail_sum([], acc), do: acc
        defp tail_sum([h|t], acc), do: tail_sum(t, h + acc)
    end
    
