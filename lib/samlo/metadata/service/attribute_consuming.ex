defmodule Samlo.Metadata.Service.AttributeConsuming do
  @moduledoc """
  Struct that defines the AttributeConsumingService
  """

  alias Samlo.Metadata.LocalizedValue
  alias Samlo.Metadata.RequestedAttribute

  defstruct index: 0,
            is_default: nil,
            names: [],
            descriptions: [],
            requested_attrs: []

  @type t() :: %__MODULE__{
          index: pos_integer,
          is_default: nil | boolean(),
          names: list(LocalizedValue.t()),
          descriptions: list(LocalizedValue.t()),
          requested_attrs: list(RequestedAttribute.t())
        }
end
