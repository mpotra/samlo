defmodule Samlo.Metadata.Rpi.PublicationPath do
  @moduledoc """
  Struct for mdrpi:PublicationPath element
  """

  alias Samlo.LocalizedName

  defstruct publisher: "",
            creation_instant: nil,
            publication_id: nil,
            usage_policies: []

  @type t() :: %__MODULE__{
          publisher: String.t(),
          creation_instant: nil,
          publication_id: nil | String.t(),
          usage_policies: list(LocalizedName.t())
        }
end
