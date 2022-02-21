defmodule Samlo.EntityDescriptor.Organization do
  @moduledoc """
  The Organization structure
  """

  defstruct extensions: [],
            name: "",
            displayName: "",
            url: ""

  @type t() :: %__MODULE__{
          extensions: list(),
          name: String.t(),
          displayName: String.t(),
          url: String.t()
        }
end
