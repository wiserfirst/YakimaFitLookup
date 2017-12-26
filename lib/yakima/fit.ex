defmodule Yakima.Fit do
  use Ecto.Schema

  schema "fits" do
    field :fit_id, :integer
    field :name, :string
    field :vehicle_id, :integer
  end
end
