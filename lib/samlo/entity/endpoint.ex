defmodule Samlo.EntityDescriptor.Endpoint do
  @moduledoc """
  The Endpoint structure holds the common attributes of a Service
  """

  defstruct binding: nil,
            location: "",
            response_location: "",
            index: nil,
            default: nil

  @type binding() :: :post | :redirect
  @type location() :: String.t()
  @type t() :: %__MODULE__{
          binding: nil | binding(),
          location: location(),
          response_location: location(),
          index: nil | pos_integer(),
          default: nil | boolean()
        }

  @spec decode_binding(binding :: String.t()) :: nil | binding()
  def decode_binding("urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect") do
    :redirect
  end

  def decode_binding("urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST") do
    :post
  end

  def decode_binding(_) do
    nil
  end

  @spec encode_binding(binding :: binding()) :: String.t()
  def encode_binding(:redirect) do
    "urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect"
  end

  def encode_binding(:post) do
    "urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST"
  end

  def encode_binding(_) do
    ""
  end

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
end
