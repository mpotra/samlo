defmodule Samlo.Xmlsig.Signature do
  @moduledoc """
  The ds:Signature structure
  """

  defstruct data: nil

  @type t() :: %__MODULE__{
          data: nil | binary()
        }
end
