defmodule Samlo.Metadata.Service.SingleSignOn do
  @moduledoc """
  Struct that defines the SingleSignOn endpoint
  """

  alias Samlo.Metadata.Endpoint

  defstruct endpoint: nil

  @type t() :: %__MODULE__{
          endpoint: nil | Endpoint.t()
        }
end
