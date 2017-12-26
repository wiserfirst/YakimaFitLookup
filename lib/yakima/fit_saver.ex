defmodule Yakima.FitSaver do
  alias Yakima.Repo
  import Ecto.Query, only: [from: 2]

  def call do
    query_responses()
    |> Enum.each(&save_fits/1)
  end

  defp query_responses do
    query = from r in Yakima.Response,
      select: %{
        fits: r.body,
        request_url: r.request_url,
      },
      limit: 3000

    Repo.all(query)
  end

  defp save_fits(resp) do
    vehicle_id = parse_vehicle_id(resp.request_url)

    Enum.each(resp.fits, fn(fit) ->
      %Yakima.Fit{
        fit_id: fit["Id"],
        name: String.downcase(fit["Name"]),
        vehicle_id: vehicle_id
      }
      |> Repo.insert()
    end)
  end

  defp parse_vehicle_id(request_url) do
    request_url
    |> String.trim()
    |> String.split("/")
    |> Enum.reverse()
    |> hd()
    |> String.to_integer()
  end
end
