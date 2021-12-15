defmodule Playground.MixProject do
  use Mix.Project

  def project do
    [
      app: :playground,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
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
      {:algae, git: "git@github.com:witchcrafters/algae.git", branch: "main"},
      {:witchcraft, git: "git@github.com:witchcrafters/witchcraft.git", branch: "main", override: true},
    ]
  end
end
