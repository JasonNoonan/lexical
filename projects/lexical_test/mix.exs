defmodule Lexical.Test.MixProject do
  use Mix.Project

  def project do
    [
      app: :lexical_test,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [{:lexical_shared, path: "../lexical_shared"}]
  end
end
