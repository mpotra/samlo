defmodule Samlo.Metadata.EntityDescriptor do
  @moduledoc """
  The EntityDescriptor structure
  """

  alias Samlo.Xmlsig.Signature
  alias Samlo.Assertion

  alias Samlo.Metadata.{
    ContactPerson,
    IdpSsoDescriptor,
    Organization,
    RoleDescriptor,
    SpSsoDescriptor,
    RequestedAttribute
  }

  defstruct entity_id: "",
            valid_until: nil,
            cache_duration: nil,
            namespaces: [],
            signature: nil,
            extensions: [],
            roles: [],
            organization: nil,
            contacts: []

  @type role() :: IdpSsoDescriptor.t() | SpSsoDescriptor.t()
  @type attr_namespace() :: tuple()
  @type child() ::
          ContactPerson.t()
          | Organization.t()
          | role()
          | RoleDescriptor.t()
          | RoleDescriptor.child()
          | RequestedAttribute.t()
          | Assertion.Attribute.t()
  @type t() :: %__MODULE__{
          entity_id: String.t(),
          valid_until: nil | DateTime.t(),
          cache_duration: nil | pos_integer(),
          namespaces: list(attr_namespace()),
          signature: nil | Signature.t(),
          extensions: list(),
          roles: list(role()),
          organization: nil | Organization.t(),
          contacts: list(ContactPerson.t())
        }
end
