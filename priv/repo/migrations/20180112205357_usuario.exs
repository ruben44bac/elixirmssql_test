defmodule PruebaBien.Repo.Migrations.Usuario do
  use Ecto.Migration

  def change do
    create table(:usuario) do
      add :nombre, :string
      add :valor, :integer
      add :clave, :uuid
    end
  end
end
