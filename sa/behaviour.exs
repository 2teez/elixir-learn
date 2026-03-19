defmodule AnimalTalking do
  @callback def say(String.t()) :: :ok
end

defmodule TalkingDog do
  @behaviour AnimalTalking

  @impl true
  def say(message) do
    IO.puts("Dog says: #{woof}")
  end
end

defmodule TalkingCat do
  @behaviour AnimalTalking

  @impl true
  def say(message) do
    IO.puts("Cat says: #{miaoo}")
  end
end
