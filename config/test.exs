import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :playground_elixir_web, PlaygroundWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "pa2z3Ja6r1L/QajZ/ylCJuuWcqRXiCstPz+gc6lEJ3a2ga3TBWpUwfDLb54W0eH7",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
