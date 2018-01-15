defmodule PruebaBien.Repo.Migrations.Tema do
  use Ecto.Migration

  def change do
    create table(:tema) do
      add :nombre, :string
      add :descripcion, :string
    end
  end
end
