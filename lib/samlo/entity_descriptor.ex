defmodule Samlo.EntityDescriptor do
  @moduledoc """
  The EntityDescriptor structure
  """

  alias Samlo.Signature

  alias Samlo.EntityDescriptor.{
    Contact,
    IdpSsoDescriptor,
    Organization,
    RoleDescriptor,
    SpSsoDescriptor
  }

  defstruct entity_id: "",
            valid_until: nil,
            cache_duration: nil,
            signature: nil,
            extensions: [],
            roles: [],
            organization: nil,
            contacts: []

  @type role() :: IdpSsoDescriptor.t() | SpSsoDescriptor.t()
  @type extension() :: any()
  @type child() ::
          Contact.t()
          | Organization.t()
          | extension()
          | role()
          | RoleDescriptor.t()
          | RoleDescriptor.child()
  @type t() :: %__MODULE__{
          entity_id: String.t(),
          valid_until: nil | DateTime.t(),
          cache_duration: nil | pos_integer(),
          signature: nil | Signature.t(),
          extensions: list(extension()),
          roles: list(role()),
          organization: nil | Organization.t(),
          contacts: list(Contact.t())
        }
end
