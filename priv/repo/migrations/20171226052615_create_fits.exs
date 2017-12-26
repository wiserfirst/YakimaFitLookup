defmodule Yakima.Repo.Migrations.CreateFits do
  use Ecto.Migration

  def change do
    create table(:fits) do
      add :fit_id, :integer
      add :name, :string
      add :vehicle_id, :integer
    end
  end

  def down do
    drop table(:fits)
  end
end
