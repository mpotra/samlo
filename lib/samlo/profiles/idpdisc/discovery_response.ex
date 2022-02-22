defmodule Samlo.Profiles.Idpdisc.DiscoveryResponse do
  @moduledoc """
  The idpdisc:DiscoveryResponse extension struct
  """
  alias Samlo.Metadata.IndexedEndpoint

  defstruct endpoint: nil

  @type t() :: %__MODULE__{
          endpoint: nil | IndexedEndpoint.t()
        }
end
