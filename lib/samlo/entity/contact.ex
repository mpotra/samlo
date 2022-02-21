defmodule Samlo.EntityDescriptor.Contact do
  @moduledoc """
  The Contact entity structure
  """

  defstruct type: :other,
            extensions: [],
            company: "",
            given_name: "",
            sur_name: "",
            email: "",
            phone: ""

  @type contact_type() :: :technical | :support | :administrative | :billing | :other
  @type t() :: %__MODULE__{
          type: contact_type(),
          extensions: list(),
          company: String.t(),
          given_name: String.t(),
          sur_name: String.t(),
          email: String.t(),
          phone: String.t()
        }
end
