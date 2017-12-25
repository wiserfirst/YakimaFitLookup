defmodule Yakima do
  @base_url "http://www.fitlookup.yakima.com/AJAX/"

  @doc """
  """
  def list_products do
    url = Path.join([@base_url, "GetProductList", "1", "0"])

    resp = HTTPoison.get! url
    resp |> IO.inspect |> save_response
  end

  def get_vehicles do
    for i <- 1..100000 do
      url = Path.join([@base_url, "GetVehicles", "2017", Integer.to_string(i)])
      url
      |> HTTPoison.get!
      |> save_response
    end
  end

  defp save_response(%HTTPoison.Response{} = resp) do
    response = %Yakima.Response{
      body: Poison.decode!(resp.body),
      request_url: resp.request_url,
      status_code: resp.status_code
    }

    Yakima.Repo.insert(response, on_conflict: :nothing)
  end
end
