defmodule App.Repo.Migrations.CreateIdenticon do
  use Ecto.Migration

  def change do
    create table(:identicon) do
      add :input, :string

      timestamps()
    end
  end
end
