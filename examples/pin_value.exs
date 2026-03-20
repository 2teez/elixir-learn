
    defmodule Greeter do
        @moduledoc """
          Documentation for Greeter
        """

        @doc """

        # Example
        """

        def for(name, greeting) do
            fn
              (^name) -> "#{greeting}, #{name}"  # ^name is a pin variable that matches the exact value
              (_) -> "Hello, stranger. I don't know you."
            end
        end
    end

    mr_tim = Greeter.for("timothy", "oi")
    IO.puts mr_tim.("timothy")
    IO.puts mr_tim.("dave")
