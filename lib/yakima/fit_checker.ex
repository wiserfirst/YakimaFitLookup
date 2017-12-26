defmodule Yakima.FitChecker do
  alias Yakima.FitQuery

  @base_url "http://www.fitlookup.yakima.com/AJAX/"

  def call do
    fits = FitQuery.call([limit: 400])

    fits
    |> Enum.map(&lookup_fit/1)
    |> Enum.filter(fn({_fit_id, vehicle_name}) ->
      Regex.match?(~r/subaru/i, vehicle_name)
    end)
    |> IO.inspect
  end

  def lookup_fit(fit) do
    fit_id = fit |> hd |> Integer.to_string()
    url = Path.join([@base_url, "GetFit", fit_id])

    url
    |> HTTPoison.get!
    |> parse_response
  end

  defp parse_response(%HTTPoison.Response{body: body, status_code: 200}) do
    details = body |> Poison.decode!
    {details["Id"], details["VehicleName"]}
  end
end
