defmodule Samlo.Metadata.RoleDescriptor do
  @moduledoc """
  The abstract RoleDescriptor structure
  """

  alias Samlo.Xmlsig.Signature
  alias Samlo.Metadata.{KeyDescriptor, Service}

  defstruct signature: nil,
            extensions: [],
            keys: [],
            nameid_formats: [],
            services: [],
            attributes: []

  @type nameid_format :: :email | :x509 | :windows | :kerberos | :persistent | :transient
  @type child() ::
          KeyDescriptor.t()
          | Service.t()
          | Signature.t()
          | KeyDescriptor.child()
          | Service.child()
  @type t() :: %__MODULE__{
          signature: nil | Signature.t(),
          extensions: list(),
          keys: list(KeyDescriptor.t()),
          nameid_formats: list(nameid_format()),
          services: list(Service.t()),
          attributes: list()
        }

  @spec decode_nameid_format(format :: String.t()) :: nil | nameid_format()
  def decode_nameid_format(format) do
    case format do
      "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress" -> :email
      "urn:oasis:names:tc:SAML:1.1:nameid-format:X509SubjectName" -> :x509
      "urn:oasis:names:tc:SAML:1.1:nameid-format:WindowsDomainQualifiedName" -> :windows
      "urn:oasis:names:tc:SAML:2.0:nameid-format:kerberos" -> :kerberos
      "urn:oasis:names:tc:SAML:2.0:nameid-format:persistent" -> :persistent
      "urn:oasis:names:tc:SAML:2.0:nameid-format:transient" -> :transient
      _ -> nil
    end
  end

  @spec encode_nameid_format(format :: nameid_format()) :: String.t()
  def encode_nameid_format(format) do
    case format do
      :email -> "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
      :x509 -> "urn:oasis:names:tc:SAML:1.1:nameid-format:X509SubjectName"
      :windows -> "urn:oasis:names:tc:SAML:1.1:nameid-format:WindowsDomainQualifiedName"
      :kerberos -> "urn:oasis:names:tc:SAML:2.0:nameid-format:kerberos"
      :persistent -> "urn:oasis:names:tc:SAML:2.0:nameid-format:persistent"
      :transient -> "urn:oasis:names:tc:SAML:2.0:nameid-format:transient"
      _ -> ""
    end
  end
end
