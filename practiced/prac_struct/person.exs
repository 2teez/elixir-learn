defmodule Person do
  defstruct name: "", age: 0
end

defmodule PrintPerson do
  def print(person=%Person{}) do
    IO.puts("Name: #{person.name}, Age: #{person.age}")
  end
end
