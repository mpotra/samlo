defmodule Samlo.Metadata.Organization do
  @moduledoc """
  The Organization structure
  """

  alias Samlo.Metadata.LocalizedValue

  defstruct extensions: [],
            names: [],
            display_names: [],
            urls: []

  @type localized_value :: {lang :: String.t(), value :: String.t()}
  @type t() :: %__MODULE__{
          extensions: list(),
          names: list(LocalizedValue.t()),
          display_names: list(LocalizedValue.t()),
          urls: list(LocalizedValue.t())
        }
end
