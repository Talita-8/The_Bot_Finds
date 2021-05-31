use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
# config :the_bot_finds, TheBotFinds.Repo,
#   username: "postgres",
#   password: "124578",
#   database: "the_bot_finds_test#{System.get_env("MIX_TEST_PARTITION")}",
#   hostname: "localhost",
#   pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :the_bot_finds, TheBotFindsWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
