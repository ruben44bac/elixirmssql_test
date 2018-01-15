defmodule Usuario do
    use PruebaBienWeb, :model
    import MssqlEcto.Helpers
    @derive {Poison.Encoder, only: [:nombre]}
    schema "usuario" do
        field :nombre, :string
        field :valor, :integer
        field :pruebauuid, Ecto.UUID
    end
    def changeset(struct, params) do
        struct
            |> cast(params, [:nombre, :valor])
            |> validate_required(:nombre)
    end
end