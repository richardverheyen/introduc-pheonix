# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :introduc,
  ecto_repos: [Introduc.Repo]

config :introduc, Introduc.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "introduc_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

# Configures the endpoint
config :introduc, IntroducWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1fu2WFVdlYTiOjTE+6wcBnPTyhTvfk2tGH7p6NDXH8oIYBng8TBf8F2IouXZRzGO",
  render_errors: [view: IntroducWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Introduc.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
