defmodule Samlo.Metadata.SpSsoDescriptor do
  @moduledoc """
  The SPSSODescriptor structure
  """

  alias Samlo.Metadata.RoleDescriptor

  defstruct metadata: nil,
            authn_req_signed: false,
            assertions_signed: false

  @type t() :: %__MODULE__{
          metadata: nil | RoleDescriptor.t(),
          authn_req_signed: boolean(),
          assertions_signed: boolean()
        }
end
