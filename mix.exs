defmodule Nomoji.MixProject do
  use Mix.Project

  def project do
    [
      app: :nomoji,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Nomoji",
      source_url: "https://github.com/joshddunn/nomoji"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    []
  end

  defp description() do
    "An elixir package that will remove emojis from your strings."
  end

  defp package do
    [
      name: "nomoji",
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/joshddunn/nomoji"}
    ]
  end
end
