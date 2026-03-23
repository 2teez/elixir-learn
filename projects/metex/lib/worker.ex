defmodule Metex.Worker do

  def loop do
    receive do
      {sender_pid, location} ->
        send(sender_pid, {:ok, temperature_of(location)})
        _ -> IO.puts("don't know how to process this message")
    end
    loop()
  end

  def temperature_of(location) do
    result = url_for(location) |> HTTPoison.get() |> parse_response()
    case result do
      {:ok, temp} -> "#{location}: #{temp}°C"
      {:error, _} -> "Error fetching temperature for #{location}"
    end
  end

  defp url_for(location) do
    location = URI.encode(location)
    "http://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{apikey()}"
  end

  defp parse_response({:ok, %HTTPoison.Response{body: body, status_code: 200}}) do
    body |> JSON.decode!() |> compute_temperature()
  end

  defp parse_response(_), do: {:error, :not_found}

  defp compute_temperature(data) do
    try do
      temp = (data["main"]["temp"] - 273.15) |> Float.round(1)
      {:ok, temp}
    rescue
      _ -> {:error, :not_found}
    end
  end

  defp apikey do
    "9d17cfe98e2e765bbdfd02365b04f155"
  end
end
