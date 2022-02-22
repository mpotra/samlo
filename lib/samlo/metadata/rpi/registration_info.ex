defmodule Samlo.Metadata.Rpi.RegistrationInfo do
  @moduledoc """
  Struct for mdrpi:RegistrationInfo element
  """

  alias Samlo.LocalizedName

  defstruct registration_authority: "",
            registration_instant: nil,
            registration_policies: []

  @type t() :: %__MODULE__{
          registration_authority: String.t(),
          registration_instant: nil,
          registration_policies: list(LocalizedName.t())
        }
end
