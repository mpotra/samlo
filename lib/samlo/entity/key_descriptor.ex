defmodule Samlo.EntityDescriptor.KeyDescriptor do
  @moduledoc """
  The KeyDescriptor structure
  """

  alias Samlo.EntityDescriptor.Certificate

  defstruct cert: nil,
            use: :sign

  @type child() :: Certificate.t()
  @type use_attr() :: :sign | :encrypt
  @type t() :: %__MODULE__{
          cert: Certificate.t(),
          use: use_attr()
        }
  def create(data, use_attr \\ :sign)

  def create(data, use_attr) when use_attr in [:sign, :encrypt] do
    case create(data, nil) do
      key_desc -> %{key_desc | use: use_attr}
    end
  end

  def create(data, _use_attr) do
    case Certificate.create(data) do
      cert -> %__MODULE__{cert: cert}
    end
  end

  @spec decode_use_attr(use_attr :: binary()) :: nil | use_attr()
  def decode_use_attr(use_attr) when is_binary(use_attr) do
    use_attr
    |> String.trim()
    |> String.downcase()
    |> case do
      "signing" -> :sign
      "encryption" -> :encrypt
      _ -> nil
    end
  end

  def decode_use_attr(_) do
    nil
  end

  @spec encode_use_attr(attr :: use_attr()) :: String.t()
  def encode_use_attr(use_attr) do
    case use_attr do
      :sign -> "signing"
      :encrypt -> "encryption"
      _ -> ""
    end
  end
end
