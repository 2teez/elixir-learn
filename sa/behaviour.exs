defmodule AnimalTalking do
  @type name :: String.t()

  @callback named(name) :: (String.t() -> atom())
  @callback presenter(name) :: atom()

  @optional_callbacks presenter: 1
end

defmodule TalkingDog do
  @behaviour AnimalTalking

  @impl true
  def named(name) do
    fn says ->
      IO.puts("Dog named #{name} says: #{says} is woof")
      :ok
    end
  end

  @impl true
  def presenter(name \\ "dog") do
    IO.puts("Presenter: #{name} is a dog")
    :ok
  end
end

defmodule TalkingCat do
  @behaviour AnimalTalking

  @impl true
  def named(name) do
    fn says ->
      IO.puts("Cat says: #{name} says #{says} is miaeeoo")
      :ok
    end
  end
end
