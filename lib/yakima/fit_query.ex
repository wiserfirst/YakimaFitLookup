defmodule Yakima.FitQuery do
  alias Yakima.{Repo,Fit}
  import Ecto.Query, only: [from: 2]

  def call(opts) do
    limit = opts[:limit] || 10
    query = from f in Fit,
      where: like(f.name, "%fullback%"),
      select: [f.fit_id, f.name, f.vehicle_id],
      order_by: [desc: :id],
      limit: ^limit

    query
    |> Repo.all
  end
end
