defmodule Yakima.Repo.Migrations.CreateResponses do
  use Ecto.Migration

  def change do
    create table(:responses) do
      add :body, :json
      add :headers, :string
      add :request_url, :string
      add :status_code, :integer
    end
  end

  def down do
    drop table(:responses)
  end
end
