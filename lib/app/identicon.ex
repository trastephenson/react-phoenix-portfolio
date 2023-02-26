defmodule App.Identicon do
  @moduledoc """
  The Identicon context.
  """

  import Ecto.Query, warn: false
  alias App.Repo

  alias App.Identicon.IdenticonSchema

  @doc """
  Returns the list of identicon.

  ## Examples

      iex> list_identicon()
      [%IdenticonSchema{}, ...]

  """
  def list_identicon do
    Repo.all(IdenticonSchema)
  end

  @doc """
  Gets a single identicon_schema.

  Raises `Ecto.NoResultsError` if the Identicon schema does not exist.

  ## Examples

      iex> get_identicon_schema!(123)
      %IdenticonSchema{}

      iex> get_identicon_schema!(456)
      ** (Ecto.NoResultsError)

  """
  def get_identicon_schema!(id), do: Repo.get!(IdenticonSchema, id)

  @doc """
  Creates a identicon_schema.

  ## Examples

      iex> create_identicon_schema(%{field: value})
      {:ok, %IdenticonSchema{}}

      iex> create_identicon_schema(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_identicon_schema(attrs \\ %{}) do
    %IdenticonSchema{}
    |> IdenticonSchema.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a identicon_schema.

  ## Examples

      iex> update_identicon_schema(identicon_schema, %{field: new_value})
      {:ok, %IdenticonSchema{}}

      iex> update_identicon_schema(identicon_schema, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_identicon_schema(%IdenticonSchema{} = identicon_schema, attrs) do
    identicon_schema
    |> IdenticonSchema.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a identicon_schema.

  ## Examples

      iex> delete_identicon_schema(identicon_schema)
      {:ok, %IdenticonSchema{}}

      iex> delete_identicon_schema(identicon_schema)
      {:error, %Ecto.Changeset{}}

  """
  def delete_identicon_schema(%IdenticonSchema{} = identicon_schema) do
    Repo.delete(identicon_schema)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking identicon_schema changes.

  ## Examples

      iex> change_identicon_schema(identicon_schema)
      %Ecto.Changeset{data: %IdenticonSchema{}}

  """
  def change_identicon_schema(%IdenticonSchema{} = identicon_schema, attrs \\ %{}) do
    IdenticonSchema.changeset(identicon_schema, attrs)
  end
end
