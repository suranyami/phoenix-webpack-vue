# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :vuetable,
  ecto_repos: [Vuetable.Repo]

# Configures the endpoint
config :vuetable, Vuetable.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BRG5ZVpeZNicTswPdsPQFzPHM/MG30I7gj0akT0UWg5MmZ/h7L8E52+hq69IC69f",
  render_errors: [view: Vuetable.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Vuetable.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
