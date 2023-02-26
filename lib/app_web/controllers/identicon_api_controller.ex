defmodule IdenticonApiController do
  use IdenticonApiWeb, :controller

  def show(conn, %{"name" => name}) do
    identicon = Identicon.generate(name)
    conn |> put_resp_header("content-type", "image/png") |> send_resp(200, identicon)
  end
end
