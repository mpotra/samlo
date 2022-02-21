defmodule Samlo.EntityDescriptor.SpSsoDescriptor do
  @moduledoc """
  The SPSSODescriptor structure
  """

  alias Samlo.EntityDescriptor.RoleDescriptor

  defstruct metadata: nil,
            authn_req_signed: false,
            assertions_signed: false

  @type t() :: %__MODULE__{
          metadata: nil | RoleDescriptor.t(),
          authn_req_signed: boolean(),
          assertions_signed: boolean()
        }
end
