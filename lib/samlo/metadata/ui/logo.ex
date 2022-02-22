defmodule Samlo.Metadata.UI.Logo do
  @moduledoc """
  Module that defines the mdui:Logo element structure
  """

  defstruct width: 0,
            height: 0,
            lang: "en",
            url: ""

  @type t() :: %__MODULE__{
          width: pos_integer(),
          height: pos_integer(),
          lang: String.t(),
          url: String.t()
        }
end
