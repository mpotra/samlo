defmodule Samlo.Metadata.Endpoint do
  @moduledoc """
  The Endpoint structure holds the common attributes of a Service
  """

  defstruct binding: nil,
            location: "",
            response_location: ""

  @type binding() :: :post | :redirect | :idp_discovery_protocol
  @type location() :: String.t()
  @type t() :: %__MODULE__{
          binding: nil | binding(),
          location: location(),
          response_location: nil | location()
        }

  @spec decode_binding(binding :: String.t()) :: nil | binding()
  def decode_binding("urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect") do
    :redirect
  end

  def decode_binding("urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST") do
    :post
  end

  def decode_binding("urn:oasis:names:tc:SAML:profiles:SSO:idp-discovery-protocol") do
    :idp_discovery_protocol
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

  def encode_binding(:idp_discovery_protocol) do
    "urn:oasis:names:tc:SAML:profiles:SSO:idp-discovery-protocol"
  end

  def encode_binding(_) do
    ""
  end
end
