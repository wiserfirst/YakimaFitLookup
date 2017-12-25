# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :yakima, :ecto_repos, [Yakima.Repo]

config :yakima, Yakima.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "yakima_repo",
  username: "postgres",
  hostname: "localhost"
