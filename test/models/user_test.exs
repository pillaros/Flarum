defmodule Flarum.UserTest do
  use Flarum.ModelCase

  alias Flarum.User

<<<<<<< HEAD
  @valid_attrs %{id_str: "some content", screen_name: "some content"}
=======
  @valid_attrs %{email: "some content", id: 42, id_str: "some content", name: "some content", screen_name: "some content"}
>>>>>>> cdf4d9517022448a0c7623b66b9d330f6229c39a
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
