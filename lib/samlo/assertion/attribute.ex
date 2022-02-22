defmodule Samlo.Assertion.Attribute do
  @moduledoc """
  Struct that defines the saml:Attribute element.
  """

  defstruct name: "",
            name_format: nil,
            friendly_name: nil,
            attrs: [],
            values: []

  @type name_format() :: :basic | :uri | :unspecified
  @type value() :: String.t()
  @type t() :: %__MODULE__{
          name: String.t(),
          name_format: nil | name_format(),
          friendly_name: nil | String.t(),
          attrs: list(tuple()),
          values: list(value())
        }

  @spec decode_name_format(name_format :: String.t()) :: nil | name_format()
  def decode_name_format(name_format) do
    case name_format do
      "urn:oasis:names:tc:SAML:2.0:attrname-format:basic" -> :basic
      "urn:oasis:names:tc:SAML:2.0:attrname-format:uri" -> :uri
      "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified" -> :unspecified
      _ -> nil
    end
  end

  @spec encode_name_format(name_format :: name_format()) :: String.t()
  def encode_name_format(name_format) do
    case name_format do
      :basic -> "urn:oasis:names:tc:SAML:2.0:attrname-format:basic"
      :uri -> "urn:oasis:names:tc:SAML:2.0:attrname-format:uri"
      :unspecified -> "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
      _ -> nil
    end
  end
end
