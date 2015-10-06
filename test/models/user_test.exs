defmodule Flarum.UserTest do
  use Flarum.ModelCase

  alias Flarum.User

  @valid_attrs %{email: "some content", id: 42, id_str: "some content", name: "some content", screen_name: "some content"}
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
