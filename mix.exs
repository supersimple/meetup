defmodule Meetup.MixProject do
  use Mix.Project

  def project do
    [
      app: :meetup,
      version: "0.1.2",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:httpotion, ">= 3.1.0"},
      {:jason, "~> 1.0"}
    ]
  end

  defp description do
    """
    Elixir wrapper for the Meetup.com public API.
    """
  end

  defp package do
    [
      name: :meetup,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Todd Resudek"],
      licenses: ["GPL 3.0"],
      links: %{"GitHub" => "https://github.com/supersimple/meetup"}
    ]
  end
end
