defmodule AppWeb.IdenticonSchemaControllerTest do
  use AppWeb.ConnCase

  import App.IdenticonFixtures

  alias App.Identicon.IdenticonSchema

  @create_attrs %{
    input: "some input"
  }
  @update_attrs %{
    input: "some updated input"
  }
  @invalid_attrs %{input: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all identicon", %{conn: conn} do
      conn = get(conn, ~p"/api/identicon")
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create identicon_schema" do
    test "renders identicon_schema when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/api/identicon", identicon_schema: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, ~p"/api/identicon/#{id}")

      assert %{
               "id" => ^id,
               "input" => "some input"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/api/identicon", identicon_schema: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update identicon_schema" do
    setup [:create_identicon_schema]

    test "renders identicon_schema when data is valid", %{conn: conn, identicon_schema: %IdenticonSchema{id: id} = identicon_schema} do
      conn = put(conn, ~p"/api/identicon/#{identicon_schema}", identicon_schema: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, ~p"/api/identicon/#{id}")

      assert %{
               "id" => ^id,
               "input" => "some updated input"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, identicon_schema: identicon_schema} do
      conn = put(conn, ~p"/api/identicon/#{identicon_schema}", identicon_schema: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete identicon_schema" do
    setup [:create_identicon_schema]

    test "deletes chosen identicon_schema", %{conn: conn, identicon_schema: identicon_schema} do
      conn = delete(conn, ~p"/api/identicon/#{identicon_schema}")
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, ~p"/api/identicon/#{identicon_schema}")
      end
    end
  end

  defp create_identicon_schema(_) do
    identicon_schema = identicon_schema_fixture()
    %{identicon_schema: identicon_schema}
  end
end
