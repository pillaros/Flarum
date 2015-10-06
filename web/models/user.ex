defmodule Flarum.User do
  use Flarum.Web, :model

  schema "users" do
    field :id_str, :string
<<<<<<< HEAD
    field :screen_name, :string
=======
    field :name, :string
    field :screen_name, :string
    field :email, :string
>>>>>>> cdf4d9517022448a0c7623b66b9d330f6229c39a

    timestamps
  end

<<<<<<< HEAD
  @required_fields ~w(id_str screen_name)
=======
  @required_fields ~w(id id_str name screen_name email)
>>>>>>> cdf4d9517022448a0c7623b66b9d330f6229c39a
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
