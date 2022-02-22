defmodule Samlo.Metadata.Service.NameIDMapping do
  @moduledoc """
  Struct that defines the NameIDMappingService
  """

  alias Samlo.Metadata.Endpoint

  defstruct endpoint: nil

  @type t() :: %__MODULE__{
          endpoint: nil | Endpoint.t()
        }
end
