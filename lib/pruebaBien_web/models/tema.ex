defmodule Tema do
    use PruebaBienWeb, :model

    schema "tema" do 
        field :nombre, :string
        field :descripcion, :string
        ##has_many :usuarios, Usuario
    end

    def changeset(struct, params) do
        struct
            |> cast(params, [:nombre, :descripcion])
            |> validate_required([:nombre, :descripcion])
    end
end