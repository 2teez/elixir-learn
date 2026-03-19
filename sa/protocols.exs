defmodule Type do
  @moduledoc """
  Defines the `entity` type as a string.
  """
  @type entity_id() :: String.t()
end

defmodule Customer do
  @moduledoc"""
  Represents a customer.
  """

  @type t() :: %Customer{id: Type.entity_id(), first_name: String.t(), last_name: String.t()}
  defstruct id: "", first_name: "", last_name: ""
end

defmodule CustomerDuo do
  @moduledoc"""
  Represents a duo of customers.
  """

  @doc """
  Creates a new `Customer` with the given customers.
  """
  @spec new(Type.entity_id(), String.t(), String.t()) :: Customer.t()
  def new(id, first_name, last_name) do
    %Customer{id: id, first_name: first_name, last_name: last_name}
  end


  @doc """
  Retrieves a customer by their entity ID.

  ## Parameters

  - `entity_id`: The unique identifier of the customer.

  ## Returns

  - `{:ok, customer}`: The customer with the given entity ID.
  - `{:error, :not_found}`: No customer found with the given entity ID.
  """

    @spec get_customer(Customer.t(), Type.entity_id()) :: {:ok, Customer.t()} | {:error, :not_found}
    def get_customer(c, id) do
      case c do
        %Customer{id: ^id} = customer -> {:ok, customer}
        _ -> {:error, :not_found}
      end
    end
end

defprotocol Printable do
  @doc """
  Returns a string representation of the given value.
  """
  @spec to_csv(data :: any()) :: String.t()
  def to_csv(data)
end

defimpl Printable, for: Customer do
  def to_csv(customer) do
    [customer.id, customer.first_name, customer.last_name] |> Enum.join(",")
  end
end

defimpl Printable, for: Map do
  def to_csv(data) do
    data
    |> Enum.map(&Map.keys/1)
    |> Enum.join(",")
  end
end
