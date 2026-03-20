
    defmodule Async_math do
        @moduledoc """
          Documentation for Async_math
        """

        @doc """
        start function for processes
        """

        def start() do
            receive do
              {:sum, [x, y], pid} ->
                send pid, {:result, x + y}
            end
            start()
        end
    end

    pid = spawn(Async_math, :start, [])
    send pid, {:sum, [5, 3], self()}
    receive do
      {:result, result} ->
        IO.puts("Result: #{result}")
    end
