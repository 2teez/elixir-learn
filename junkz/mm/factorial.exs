
    defmodule Factorial do
        @moduledoc """
          Documentation for Factorial
        """

        @doc """

        # Example
        """

        def of(0), do: 1
        def of(n), do: n * of(n-1)
    end
