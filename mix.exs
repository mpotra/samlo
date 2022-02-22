defmodule Samlo.MixProject do
  use Mix.Project

  @source_url "https://github.com/mpotra/samlo"

  def project do
    [
      app: :samlo,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: "Elixir SAML library and structures",
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :crypto]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.1", only: [:dev, :test], runtime: false}
    ]
  end

  def package do
    [
      name: :samlo,
      files: ~w(lib LICENSE mix.exs README.md),
      maintainers: ["Mihai Potra"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end
end
