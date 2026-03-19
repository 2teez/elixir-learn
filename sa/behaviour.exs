defmodule Talking do
  @callback def say(String.t()) :: :ok
end

defmodule TalkingDog do
  @behaviour Talking

  @impl true
  def say(message) do
    IO.puts("Dog says: #{woof}")
  end
end
