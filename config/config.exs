# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :the_bot_finds,
  ecto_repos: [TheBotFinds.Repo]

# Configures the endpoint
config :the_bot_finds, TheBotFindsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9185ze8FT18rW5bs4Y0wNYZNwzLc2y4j0r06Sxaifzc5/12x5/j9aGcnhUnmd7jt",
  render_errors: [view: TheBotFindsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TheBotFinds.PubSub,
  live_view: [signing_salt: "oz7WV3g0"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
