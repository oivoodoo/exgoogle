defmodule Exgoogle.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [app: :exgoogle,
     version: @version,
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [
        :logger,
        :httpoison,
        :poison
      ]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.8.1"},
      {:poison, "~> 1.5"},
      {:mix_test_watch, "~> 0.2", only: :dev},
      {:dogma, "~> 0.1", only: [:dev, :test]},
      {:ex_unit_notifier, "~> 0.1", only: :test},
      {:exvcr, "~> 0.7", only: :test},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:inch_ex, "~> 0.5", only: :dev}
    ]
  end
end
