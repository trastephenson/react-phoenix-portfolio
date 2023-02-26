defmodule AppWeb.IdenticonSchemaController do
  use AppWeb, :controller

  alias App.Identicon
  alias App.Identicon.IdenticonSchema

  action_fallback AppWeb.FallbackController

  def index(conn, _params) do
    identicon = Identicon.list_identicon()
    render(conn, :index, identicon: identicon)
  end

  def create(conn, %{"identicon_schema" => identicon_schema_params}) do
    with {:ok, %IdenticonSchema{} = identicon_schema} <- Identicon.create_identicon_schema(identicon_schema_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/identicon/#{identicon_schema}")
      |> render(:show, identicon_schema: identicon_schema)
    end
  end

  def show(conn, %{"id" => id}) do
    identicon_schema = Identicon.get_identicon_schema!(id)
    render(conn, :show, identicon_schema: identicon_schema)
  end

  def update(conn, %{"id" => id, "identicon_schema" => identicon_schema_params}) do
    identicon_schema = Identicon.get_identicon_schema!(id)

    with {:ok, %IdenticonSchema{} = identicon_schema} <- Identicon.update_identicon_schema(identicon_schema, identicon_schema_params) do
      render(conn, :show, identicon_schema: identicon_schema)
    end
  end

  def delete(conn, %{"id" => id}) do
    identicon_schema = Identicon.get_identicon_schema!(id)

    with {:ok, %IdenticonSchema{}} <- Identicon.delete_identicon_schema(identicon_schema) do
      send_resp(conn, :no_content, "")
    end
  end
end
