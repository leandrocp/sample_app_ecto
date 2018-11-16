defmodule SampleApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :sample_app,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {SampleApp.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:db_connection, git: "https://github.com/elixir-ecto/db_connection.git", branch: "jv-after-connect-timeout", override: true},
      {:postgrex, "~> 0.13"},
      {:jason, "~> 1.1"},
      {:ecto_sql, "~> 3.0"}
    ]
  end
end
