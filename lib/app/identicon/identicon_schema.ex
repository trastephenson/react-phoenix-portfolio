defmodule App.Identicon.IdenticonSchema do
  use Ecto.Schema
  import Ecto.Changeset

  schema "identicon" do
    field :input, :string

    timestamps()
  end

  @doc false
  def changeset(identicon_schema, attrs) do
    identicon_schema
    |> cast(attrs, [:input])
    |> validate_required([:input])
  end
end
