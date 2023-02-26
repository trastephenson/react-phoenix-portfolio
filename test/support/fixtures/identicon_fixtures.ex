defmodule App.IdenticonFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `App.Identicon` context.
  """

  @doc """
  Generate a identicon_schema.
  """
  def identicon_schema_fixture(attrs \\ %{}) do
    {:ok, identicon_schema} =
      attrs
      |> Enum.into(%{
        input: "some input"
      })
      |> App.Identicon.create_identicon_schema()

    identicon_schema
  end
end
