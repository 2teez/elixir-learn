
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

    defmodule Transformation do
      @moduledoc """
        Documentation for Transformation
      """

      @doc """
        Transforms a list by flattening, reversing, and squaring each element.

        # Example
        [1,[[2], 3]] |> Transformation.transform() #=> [9, 4, 1]
        """

      @spec transform(list()) :: list()

      def transform(lst) when is_list(lst) do
        lst |> List.flatten()
            |> Enum.reverse()
            |> Enum.map(&(&1 * &1))
      end
    end
