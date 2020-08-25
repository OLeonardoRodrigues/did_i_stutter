# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :did_i_stutter,
  ecto_repos: [DidIStutter.Repo]

# Configures the endpoint
config :did_i_stutter, DidIStutterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/JFzi/JGelGLKwbDsV/Zb6g8rlsIQDvkxJ1D3YeLsXddO9g818g/WiIkCafX53cA",
  render_errors: [view: DidIStutterWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: DidIStutter.PubSub,
  live_view: [signing_salt: "7wfpmnc2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
