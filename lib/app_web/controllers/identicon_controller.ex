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

  def generate(conn, params) do
    case Identicon.generate(params["name"]) do
      {:ok, data} ->
        conn
        |> put_resp_content_type("image/png")
        |> send_resp(200, data)
      {:error, _} ->
        conn |> send_resp(400, "Invalid name")
    end
  end
end
