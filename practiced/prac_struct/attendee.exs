
defmodule Attendee do
  @moduledoc """
    Documentation for Attendee
  """

  @doc """

    # Example
  """
  #import Participants
  def may_attend?(a = %Participants{}) do
    a.paid && a.over_18
  end

  def print_vip_badge(%Participants{name: name}) when name != "" do
    IO.puts("VIP Badge for #{name}")
  end

  def print_vip_badge(%Participants{})  do
    raise "Missing name. Can't print VIP badge"
  end
end
