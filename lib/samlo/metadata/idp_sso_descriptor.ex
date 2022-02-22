defmodule Samlo.Metadata.IdpSsoDescriptor do
  @moduledoc """
  The IDPSSODescriptor structure
  """

  alias Samlo.Metadata.RoleDescriptor

  defstruct metadata: nil,
            authn_req_signed: false

  @type t() :: %__MODULE__{
          metadata: nil | RoleDescriptor.t(),
          authn_req_signed: boolean()
        }
end
