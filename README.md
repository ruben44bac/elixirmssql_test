# PruebaBien

  Este es un proyecto de prueba utilizando elixir, ecto, phoenix y SQL Server

  * Inicio del proyecto: `mix phx.new pruebaBien --database mssql`

## Configuración inicial

  Antes de ejecutar `mix deps.get` debemos configurar el archivo mix.exs y dev.exs

### mix.exs
  ```
    def application do
    [
      mod: {PruebaBien.Application, []},
      extra_applications: [:logger, :runtime_tools, :mssqlex, :mssql_ecto]
    ]
    end
  ```
  ```
    defp deps do
        [
          {:phoenix, "~> 1.3.0"},
          {:phoenix_pubsub, "~> 1.0"},
          {:phoenix_ecto, "~> 3.2"},
          {:mssql_ecto, "~> 0.3.1"},
          {:mssqlex, "~> 0.8.0"},
          {:phoenix_html, "~> 2.10"},
          {:phoenix_live_reload, "~> 1.0", only: :dev},
          {:gettext, "~> 0.11"},
          {:cowboy, "~> 1.0"},
          {:ex_doc, "~> 0.12"},
          { :uuid, "~> 1.1" }
        ]
    end
  ```

