defmodule Samlo.Metadata.EntitiesDescriptor do
  @moduledoc """
  The EntitiesDescriptor structure
  """

  alias Samlo.Metadata.EntityDescriptor
  alias Samlo.Xmlsig.Signature

  defstruct signature: nil,
            entities: []

  @type t() :: %__MODULE__{
          signature: nil | Signature.t(),
          entities: list(EntityDescriptor.t())
        }
end
