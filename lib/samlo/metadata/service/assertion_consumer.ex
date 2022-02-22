defmodule Samlo.Metadata.Service.AssertionConsumer do
  @moduledoc """
  Struct that defines the AssertionConsumerService
  """

  alias Samlo.Metadata.IndexedEndpoint

  defstruct endpoint: nil

  @type t() :: %__MODULE__{
          endpoint: nil | IndexedEndpoint.t()
        }
end
