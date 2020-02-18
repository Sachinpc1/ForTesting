# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :for_testing,
  ecto_repos: [ForTesting.Repo]

# Configures the endpoint
config :for_testing, ForTestingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6/Iyhr/89esqIJk03j1eFyB/4E6I89OiQosfc1jwgg37qDB5MgARQN7sdD1ZzFEw",
  render_errors: [view: ForTestingWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ForTesting.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
