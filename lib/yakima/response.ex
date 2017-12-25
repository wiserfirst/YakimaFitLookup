defmodule Yakima.Response do
  use Ecto.Schema

  schema "responses" do
    field :body, {:array, :map}
    field :headers, :string
    field :request_url, :string
    field :status_code, :integer
  end
end
