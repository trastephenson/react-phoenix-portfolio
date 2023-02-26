defmodule AppWeb.IdenticonController do
  use AppWeb, :controller

  def show(conn, %{"name" => name}) do
    case Identicon.generate(name) do
      {:ok, data} ->
        conn
        |> put_resp_content_type("image/png")
        |> send_resp(200, data)
      {:error, _} ->
        conn |> send_resp(400, "Invalid name")
    end
  end

  def generate(conn, %{"name" => name}) do
    identicon = name
    |> Identicon.main()
    |> Identicon.to_data_url()

    conn
    |> put_resp_content_type("image/png")
    |> send_resp(200, identicon)
  end
end
