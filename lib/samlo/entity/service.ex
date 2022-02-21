defmodule Samlo.EntityDescriptor.Service do
  @moduledoc """
  An abstract module that exposes the various Service modules
  and the Service.t() type
  """

  alias Samlo.EntityDescriptor.Service.{SingleSignOn, SingleLogout}

  @type child() :: Samlo.EntityDescriptor.Endpoint.t()
  @type t() :: SingleSignOn.t() | SingleLogout.t()
end
