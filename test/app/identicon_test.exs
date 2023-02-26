defmodule App.IdenticonTest do
  use App.DataCase

  alias App.Identicon

  describe "identicon" do
    alias App.Identicon.IdenticonSchema

    import App.IdenticonFixtures

    @invalid_attrs %{input: nil}

    test "list_identicon/0 returns all identicon" do
      identicon_schema = identicon_schema_fixture()
      assert Identicon.list_identicon() == [identicon_schema]
    end

    test "get_identicon_schema!/1 returns the identicon_schema with given id" do
      identicon_schema = identicon_schema_fixture()
      assert Identicon.get_identicon_schema!(identicon_schema.id) == identicon_schema
    end

    test "create_identicon_schema/1 with valid data creates a identicon_schema" do
      valid_attrs = %{input: "some input"}

      assert {:ok, %IdenticonSchema{} = identicon_schema} = Identicon.create_identicon_schema(valid_attrs)
      assert identicon_schema.input == "some input"
    end

    test "create_identicon_schema/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Identicon.create_identicon_schema(@invalid_attrs)
    end

    test "update_identicon_schema/2 with valid data updates the identicon_schema" do
      identicon_schema = identicon_schema_fixture()
      update_attrs = %{input: "some updated input"}

      assert {:ok, %IdenticonSchema{} = identicon_schema} = Identicon.update_identicon_schema(identicon_schema, update_attrs)
      assert identicon_schema.input == "some updated input"
    end

    test "update_identicon_schema/2 with invalid data returns error changeset" do
      identicon_schema = identicon_schema_fixture()
      assert {:error, %Ecto.Changeset{}} = Identicon.update_identicon_schema(identicon_schema, @invalid_attrs)
      assert identicon_schema == Identicon.get_identicon_schema!(identicon_schema.id)
    end

    test "delete_identicon_schema/1 deletes the identicon_schema" do
      identicon_schema = identicon_schema_fixture()
      assert {:ok, %IdenticonSchema{}} = Identicon.delete_identicon_schema(identicon_schema)
      assert_raise Ecto.NoResultsError, fn -> Identicon.get_identicon_schema!(identicon_schema.id) end
    end

    test "change_identicon_schema/1 returns a identicon_schema changeset" do
      identicon_schema = identicon_schema_fixture()
      assert %Ecto.Changeset{} = Identicon.change_identicon_schema(identicon_schema)
    end
  end
end
