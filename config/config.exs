# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :reborn,
  ecto_repos: [Reborn.Repo]

# Configures the endpoint
config :reborn, RebornWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/7IJ1E4kBoEDZk+q3fco8cHUde9J3e5mG9TWdsEr3TBpLsVOkZtCPAhZpNJWjMzf",
  render_errors: [view: RebornWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Reborn.PubSub,
  live_view: [signing_salt: "7jGidLJO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# admin authentication information
config :reborn, USERNAME: "admin", PASSWORD: "adminPassword"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
