defmodule Samlo.Metadata.Rpi.PublicationInfo do
  @moduledoc """
  Struct for mdrpi:PublicationInfo element
  """

  alias Samlo.LocalizedName
  alias Samlo.Metadata.Rpi.Publication

  defstruct publication: nil,
            usage_policies: []

  @type t() :: %__MODULE__{
          publication: nil | Publication.t(),
          usage_policies: list(LocalizedName.t())
        }
end
