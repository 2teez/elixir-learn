defmodule Prefix do
  @moduledoc """
    Documentation for Prefix
  """

  @doc """

  # Example
  """

  def prefix(param) do
    fn inner_param -> param <> inner_param end
  end
end
