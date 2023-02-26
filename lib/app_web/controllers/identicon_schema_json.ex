defmodule AppWeb.IdenticonSchemaJSON do
  alias App.Identicon.IdenticonSchema

  @doc """
  Renders a list of identicon.
  """
  def index(%{identicon: identicon}) do
    %{data: for(identicon_schema <- identicon, do: data(identicon_schema))}
  end

  @doc """
  Renders a single identicon_schema.
  """
  def show(%{identicon_schema: identicon_schema}) do
    %{data: data(identicon_schema)}
  end

  defp data(%IdenticonSchema{} = identicon_schema) do
    %{
      id: identicon_schema.id,
      input: identicon_schema.input
    }
  end
end
