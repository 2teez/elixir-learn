
    defmodule Playprocess do
        @moduledoc """
          Documentation for Playprocess
        """

        @doc """

        # Example
        """

        def report do
          receive do
            msg -> IO.puts("Received: #{msg}")
          end
          report()
        end

        def hello_world() do

          for greet <- ["hi", "howdy", "hello", "henry"] |> Enum.shuffle() do
              pid = spawn(Playprocess, :hello, [])
              send(pid, {self(), {:ok, greet, "world"}})
            end

          receive do
            {:ok, msg}  -> IO.puts("Received: #{msg}")
          end
          #hello_world()  # for infinite loop
        end

        def hello() do
            receive do
              {pid, {:ok, greet, msg}} -> send(pid, {:ok, "#{greet} #{msg}"})
              _ -> IO.puts("don't know how to process this message")
            end
            hello()
        end
    end
