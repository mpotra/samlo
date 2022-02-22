defmodule Samlo.Metadata.Service.AssertionIDRequest do
  @moduledoc """
  Struct that defines the AssertionIDRequestService
  """

  alias Samlo.Metadata.Endpoint

  defstruct endpoint: nil

  @type t() :: %__MODULE__{
          endpoint: nil | Endpoint.t()
        }
end
