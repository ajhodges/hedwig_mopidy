defmodule HedwigMopidy.Mixfile do
  use Mix.Project

  def project do
    [
      app: :hedwig_mopidy,
      version: "0.0.1",
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps
    ]
  end

  def application do
    [
      applications: [
        :hedwig,
        :logger,
        :mopidy
      ],
      mod: {HedwigMopidy, []}
    ]
  end

  defp deps do
    [
      {:hedwig, "~> 1.0.0-rc.4"},
      {:mopidy, path: "../mopidy"}
    ]
  end
end
