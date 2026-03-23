defmodule Metex.Worker do
  def temperature_of_location(location) do
    result = url_for(location) |> HTTPoison.get() |> parse_response()
    case result do
      {:ok, temp} -> "Temperature of #{location}: #{temp}°C"
      {:error, _} -> "Error fetching temperature for #{location}"
    end
  end

  defp url_for(location) do
    location = URI.encode(location)
    "http://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{apikey()}"
  end

  defp parse_response({:ok, %HTTPoison.Response{body: body, status_code: 200}}) do
    body |> Poison.decode!() |> compute_temperature()
  end

  defp compute_temperature(data) do
    try do
      temp = (data["main"]["temp"] - 273.15) |> Float.round(1)
      {:ok, temp}
    rescue
      _ -> {:error, :not_found}
    end
  end

  defp apikey do
    System.get_env("OPENWEATHERMAP_API_KEY")
  end

  defp parse_response({:error, _}), do: {:error, :not_found}
end
