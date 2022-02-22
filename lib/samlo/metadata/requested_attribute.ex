defmodule Samlo.Metadata.RequestedAttribute do
  @moduledoc """
  Struct that defines the RequestedAttribute element.
  """

  alias Samlo.Assertion.Attribute

  defstruct is_required: nil,
            name: "",
            name_format: nil,
            friendly_name: nil,
            attrs: [],
            values: []

  @type t() :: %__MODULE__{
          is_required: nil | boolean(),
          name: String.t(),
          name_format: nil | Attribute.name_format(),
          friendly_name: nil | String.t(),
          attrs: list(tuple()),
          values: list(Attribute.value())
        }

  @spec to_saml_attribute(required_attribute :: t()) :: Attribute.t()
  def to_saml_attribute(%__MODULE__{} = requested_attribute) do
    map = Map.take(requested_attribute, [:name, :name_format, :friendly_name, :attrs, :values])
    struct!(Attribute, map)
  end
end
