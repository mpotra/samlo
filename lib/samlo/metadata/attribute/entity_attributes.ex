defmodule Samlo.Metadata.Attribute.EntityAttributes do
  @moduledoc """
  Struct for mdattr:EntityAttributes element
  """
  alias Samlo.Assertion.Attribute

  defstruct children: []

  @type t() :: %__MODULE__{
          children: list(Attribute.t())
        }
end
