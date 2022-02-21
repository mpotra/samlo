defmodule Samlo.EntityDescriptor.Service.SingleLogout do
  @moduledoc """
  Struct that defines the SingleLogoutService endpoint
  """

  alias Samlo.EntityDescriptor.Endpoint

  defstruct endpoint: nil

  @type t() :: %__MODULE__{
          endpoint: nil | Endpoint.t()
        }
end
