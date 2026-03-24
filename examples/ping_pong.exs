
    defmodule PingPong do
        @moduledoc """
          Documentation for Ping-pong
        """

        @doc """

        # Example
        """

        def pong() do
          pid = spawn(PingPong, :ping, [])
          send(pid, {self(), :ping})

          receive do
            {:pong, _} -> "pong"
            {:exit, reason} -> exit(reason)
          end
        end

        def ping() do
            receive do
                {pid, :ping} -> send(pid, {:pong, IO.puts("ping")})
                {:exit, reason} -> exit(reason)
            end
            ping()
        end
    end
