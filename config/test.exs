use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :pruebaBien, PruebaBienWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :pruebaBien, PruebaBien.Repo,
  adapter: MssqlEcto,
  username: "sa",
  password: "",
  database: "pruebabien_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
