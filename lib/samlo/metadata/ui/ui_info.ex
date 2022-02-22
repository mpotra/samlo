defmodule Samlo.Metadata.UI.UIInfo do
  @moduledoc """
  Module that sets the mdui:UIInfo element struct
  """

  alias Samlo.LocalizedName

  alias Samlo.Metadata.UI.Logo

  defstruct attrs: []

  @type url() :: String.t()
  @type display_name() :: LocalizedName.t(String.t())
  @type information_url() :: LocalizedName.t(url())
  @type privacy_statement_url() :: LocalizedName.t(url())
  @type description() :: LocalizedName.t(String.t())
  @type ui_keyword() :: LocalizedName.t(String.t())
  @type t() :: %__MODULE__{
          attrs:
            list(
              display_name()
              | information_url()
              | privacy_statement_url()
              | Logo.t()
              | description()
              | ui_keyword()
            )
        }
end
