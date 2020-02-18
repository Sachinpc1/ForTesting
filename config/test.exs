use Mix.Config

# Configure your database
config :for_testing, ForTesting.Repo,
  username: "postgres",
  password: "postgres",
  database: "for_testing_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :for_testing, ForTestingWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
