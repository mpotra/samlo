defmodule Samlo.EntitiesDescriptor do
  @moduledoc """
  The EntitiesDescriptor structure
  """

  alias Samlo.{EntityDescriptor, Signature}

  defstruct signature: nil,
            entities: []

  @type t() :: %__MODULE__{
          signature: nil | Signature.t(),
          entities: list(EntityDescriptor.t())
        }
end
