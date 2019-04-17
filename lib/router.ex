defmodule Server.Router do
    use Plug.Router
    require HTTPoison
    require Poison
  
    plug(:match)
    plug(:dispatch)
  
    get "/" do
      conn
      |> put_resp_content_type("application/json")
      |> send_resp(200, Poison.encode!(message()))
    end
  
    defp message do
      
      url = "https://api.themoviedb.org/3/search/person?api_key=9541e2496e6d656c4fec6e0eff17329a&language=en-US&query=%20tom%20hanks&page=1&include_adult=false"
      response = HTTPoison.get!(url)
      req = Poison.decode!(response.body)
      
      myname = req
      |>Enum.at("results")
      |>Enum.at(0)
      |>Enum.at("name")

      %{
        response_type: "in_channel",
        text: "Hello from BOT :)",
        name: myname
      }
    end
  end