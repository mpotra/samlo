defmodule Samlo.Metadata.ContactPerson do
  @moduledoc """
  The ContactPerson entity structure
  """

  defstruct type: :other,
            extensions: [],
            company: nil,
            given_name: nil,
            sur_name: nil,
            emails: [],
            phones: []

  @type contact_type() :: :technical | :support | :administrative | :billing | :other
  @type t() :: %__MODULE__{
          type: contact_type(),
          extensions: list(),
          company: nil | String.t(),
          given_name: nil | String.t(),
          sur_name: nil | String.t(),
          emails: list(String.t()),
          phones: list(String.t())
        }

  @spec decode_contact_type(contact_type :: String.t()) :: contact_type()
  def decode_contact_type(contact_type) when is_binary(contact_type) do
    case contact_type do
      "technical" -> :technical
      "support" -> :support
      "administrative" -> :administrative
      "billing" -> :billing
      _ -> :other
    end
  end

  def decode_contact_type(_) do
    :other
  end

  @spec encode_contact_type(contact_type :: contact_type()) :: String.t()
  def encode_contact_type(contact_type) do
    case contact_type do
      :technical -> "technical"
      :support -> "support"
      :administrative -> "administrative"
      :billing -> "billing"
      _ -> "other"
    end
  end
end
