defmodule Samlo.LocalizedName do
  @moduledoc """
  Module that describes the LocalizedNameType element struct
  """

  defstruct name: "",
            lang: "en",
            value: ""

  @type t(value_type) :: %__MODULE__{
          name: String.t(),
          lang: String.t(),
          value: value_type
        }
  @type t() :: t(String.t())
end
