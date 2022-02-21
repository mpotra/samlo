defmodule Samlo.EntityDescriptor.Service.SingleSignOn do
  @moduledoc """
  Struct that defines the SingleSignOn endpoint
  """

  alias Samlo.EntityDescriptor.Endpoint

  defstruct endpoint: nil

  @type t() :: %__MODULE__{
          endpoint: nil | Endpoint.t()
        }
end
