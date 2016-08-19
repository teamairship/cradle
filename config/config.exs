# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cradle,
  ecto_repos: [Cradle.Repo]

# Configures the endpoint
config :cradle, Cradle.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "H/e6xz+LzMZTp12Vgg0sklsOp7/nZWlOg4PfCfG3aY/sg97B/yiGiOoDw9yUlJ8g",
  render_errors: [view: Cradle.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Cradle.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
