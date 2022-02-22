defmodule Samlo.Metadata.Service.SingleLogout do
  @moduledoc """
  Struct that defines the SingleLogoutService endpoint
  """

  alias Samlo.Metadata.Endpoint

  defstruct endpoint: nil

  @type t() :: %__MODULE__{
          endpoint: nil | Endpoint.t()
        }
end
