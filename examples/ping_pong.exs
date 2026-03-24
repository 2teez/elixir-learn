
    defmodule PingPong do
        @moduledoc """
          Documentation for Ping-pong
        """

        @doc """

        # Example
        """

        def pong() do
          pid = spawn(PingPong, :ping, [])
          send(pid, {:ping, self()})

          receive do
            {:pong, _} -> IO.puts("#{inspect(ping)}")
            {:exit, reason} -> exit(reason)
          end
        end

        def ping() do
            receive do
                {:ping, pid} -> send(pid, {:pong, IO.puts("pong")})
                {:exit, reason} -> exit(reason)
            end
            ping()
        end
    end
