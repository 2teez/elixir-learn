
defmodule Participants do
  defstruct name: "", paid: false, over_18: true
end

defimpl Inspect, for: Participants do
  import Inspect.Algebra

  def inspect(participant, _opts) do
    concat(["Participants(", "Name: ", to_string(participant.name), ", Paid: ", to_string(participant.paid), ", Over 18: ", to_string(participant.over_18), ")"])
  end
end
