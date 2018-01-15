defmodule Prueba do
    use PruebaBienWeb, :model

    schema "prueba" do
        field :nombre, :string
    end

    def changeset(struct, params) do
        struct
            |> cast(params, [:nombre])
            |> validate_required(:nombre)
    end
end