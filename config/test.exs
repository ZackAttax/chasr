import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :chasr, Chasr.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "chasr_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chasr, ChasrWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "WJB6/poevg+Dq6kY5KWBHe3+75cd9WjUHIPdGiLTlqYTd9aAi8fr3vzjivvQCYcU",
  server: false

# In test we don't send emails.
config :chasr, Chasr.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
