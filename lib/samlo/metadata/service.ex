defmodule Samlo.Metadata.Service do
  @moduledoc """
  An abstract module that exposes the various Service modules
  and the Service.t() type
  """

  alias Samlo.Metadata.Service.{
    SingleSignOn,
    SingleLogout,
    AssertionConsumer,
    AttributeConsuming
  }

  @type child() :: Samlo.Metadata.Endpoint.t()
  @type t() ::
          SingleSignOn.t() | SingleLogout.t() | AssertionConsumer.t() | AttributeConsuming.t()
end
