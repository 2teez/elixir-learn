defmodule Person do
  defstruct name: "", age: 0
end

defmodule PrintPerson do
  def print(person=%Person{}) do
    IO.puts("Name: #{person.name}, Age: #{person.age}")
  end
end

defimpl Inspect, for: Person do
  import Inspect.Algebra

  def inspect(person, _opts) do
    concat(["Person(", "Name: ", to_string(person.name), ", Age: ", to_string(person.age), ")"])
  end
end
