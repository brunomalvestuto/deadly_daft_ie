defmodule DeadlyDaftIe.MixProject do
  use Mix.Project

  def project do
    [
      app: :deadly_daft_ie,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {DeadlyDaftIe.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:floki, "~> 0.20.0"},
      {:elixir_feed_parser, "~> 0.0.1"},
      {:httpoison, "~> 1.0"},
      {:timex, "~> 3.1"}
    ]
  end
end
