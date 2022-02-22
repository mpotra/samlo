defmodule Samlo.Metadata.IndexedEndpoint do
  @moduledoc """
  The Endpoint structure holds the common attributes of a Service
  """
  alias Samlo.Metadata.Endpoint

  defstruct index: 0,
            is_default: nil,
            binding: nil,
            location: "",
            response_location: ""

  @type t() :: %__MODULE__{
          index: pos_integer(),
          is_default: nil | boolean(),
          binding: nil | Endpoint.binding(),
          location: Endpoint.location(),
          response_location: nil | Endpoint.location()
        }

  @spec decode_default_value(default_value :: binary()) :: boolean()
  def decode_default_value(str) when is_binary(str) do
    str
    |> String.downcase()
    |> case do
      "true" -> true
      "false" -> false
      _ -> nil
    end
  end

  def decode_default_value(_) do
    nil
  end

  @spec from(endpoint :: Endpoint.t()) :: nil | t()
  def from(%Endpoint{} = endpoint) do
    map = Map.take(endpoint, [:binding, :location, :response_location])
    struct(__MODULE__, map)
  end

  def from(_) do
    nil
  end

  @spec to_endpoint(endpoint :: t()) :: Endpoint.t()
  def to_endpoint(%__MODULE__{} = endpoint) do
    map = Map.take(endpoint, [:binding, :location, :response_location])
    struct(Endpoint, map)
  end
end
