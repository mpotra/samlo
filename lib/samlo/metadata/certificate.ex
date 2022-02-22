defmodule Samlo.Metadata.Certificate do
  @moduledoc """
  Structure that contains the X509Certificate data
  """

  defstruct data: nil,
            type: :x509

  @type alg() :: :sha256
  @type cert_type() :: :x509
  @type t() :: %__MODULE__{
          data: nil | binary() | charlist(),
          type: cert_type()
        }

  def create(data) do
    %__MODULE__{
      data: data
    }
  end

  @spec gen_fingerprint(cert :: t() | binary(), hash_alg :: alg()) ::
          {alg :: alg(), hash :: term()}
  def gen_fingerprint(_, alg \\ :sha256)

  def gen_fingerprint(%__MODULE__{data: data}, alg) do
    gen_fingerprint(data, alg)
  end

  def gen_fingerprint(data, alg) when is_binary(data) do
    cert =
      data
      |> trim()
      |> Base.decode64!()

    {alg, :crypto.hash(alg, cert)}
  end

  @spec trim(data :: binary()) :: binary()
  def trim(data) when is_binary(data) do
    # Extract base64 encoded cert from XML (strip away any whitespace)
    String.replace(data, ~r/[\s\n\r\t\v]/, "", global: true)
  end
end
