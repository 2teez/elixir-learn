defmodule Customer do
  @moduledoc"""
  Represents a customer.
  """
  @type entity_id() :: String.t()

  @type t() :: %Customer{id: entity_id(), first_name: String.t(), last_name: String.t()}
  defstruct id: "", first_name: "", last_name: ""
end

defmodule CustomerDuo do
  @moduledoc"""
  Represents a duo of customers.
  """

  @doc """
  Retrieves a customer by their entity ID.

  ## Parameters

  - `entity_id`: The unique identifier of the customer.

  ## Returns

  - `{:ok, customer}`: The customer with the given entity ID.
  - `{:error, :not_found}`: No customer found with the given entity ID.
  """
    @spec get_customer(Customer.t(), entity_id()) :: {:ok, Customer.t()} | {:error, :not_found}
    def get_customer(c, id) do
      case c do
        %Customer{id: ^id} = customer -> {:ok, customer}
        _ -> {:error, :not_found}
      end
    end
end
