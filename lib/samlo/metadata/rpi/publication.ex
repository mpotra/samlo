defmodule Samlo.Metadata.Rpi.Publication do
  @moduledoc """
  Struct for mdrpi:Publication element
  """

  defstruct publisher: "",
            creation_instant: nil,
            publication_id: nil

  @type t() :: %__MODULE__{
          publisher: String.t(),
          creation_instant: nil,
          publication_id: nil | String.t()
        }
end
