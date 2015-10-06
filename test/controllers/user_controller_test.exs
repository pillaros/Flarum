defmodule Flarum.UserControllerTest do
  use Flarum.ConnCase

  alias Flarum.User
<<<<<<< HEAD
  @valid_attrs %{id_str: "some content", screen_name: "some content"}
  @invalid_attrs %{}

  setup do
    conn = conn() |> put_req_header("accept", "application/json")
=======
  @valid_attrs %{email: "some content", id: 42, id_str: "some content", name: "some content", screen_name: "some content"}
  @invalid_attrs %{}

  setup do
    conn = conn()
>>>>>>> cdf4d9517022448a0c7623b66b9d330f6229c39a
    {:ok, conn: conn}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, user_path(conn, :index)
<<<<<<< HEAD
    assert json_response(conn, 200)["data"] == []
=======
    assert html_response(conn, 200) =~ "Listing users"
  end

  test "renders form for new resources", %{conn: conn} do
    conn = get conn, user_path(conn, :new)
    assert html_response(conn, 200) =~ "New user"
  end

  test "creates resource and redirects when data is valid", %{conn: conn} do
    conn = post conn, user_path(conn, :create), user: @valid_attrs
    assert redirected_to(conn) == user_path(conn, :index)
    assert Repo.get_by(User, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, user_path(conn, :create), user: @invalid_attrs
    assert html_response(conn, 200) =~ "New user"
>>>>>>> cdf4d9517022448a0c7623b66b9d330f6229c39a
  end

  test "shows chosen resource", %{conn: conn} do
    user = Repo.insert! %User{}
    conn = get conn, user_path(conn, :show, user)
<<<<<<< HEAD
    assert json_response(conn, 200)["data"] == %{"id" => user.id,
      "id_str" => user.id_str,
      "screen_name" => user.screen_name}
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
=======
    assert html_response(conn, 200) =~ "Show user"
  end

  test "renders page not found when id is nonexistent", %{conn: conn} do
>>>>>>> cdf4d9517022448a0c7623b66b9d330f6229c39a
    assert_raise Ecto.NoResultsError, fn ->
      get conn, user_path(conn, :show, -1)
    end
  end

<<<<<<< HEAD
  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post conn, user_path(conn, :create), user: @valid_attrs
    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(User, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, user_path(conn, :create), user: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    user = Repo.insert! %User{}
    conn = put conn, user_path(conn, :update, user), user: @valid_attrs
    assert json_response(conn, 200)["data"]["id"]
=======
  test "renders form for editing chosen resource", %{conn: conn} do
    user = Repo.insert! %User{}
    conn = get conn, user_path(conn, :edit, user)
    assert html_response(conn, 200) =~ "Edit user"
  end

  test "updates chosen resource and redirects when data is valid", %{conn: conn} do
    user = Repo.insert! %User{}
    conn = put conn, user_path(conn, :update, user), user: @valid_attrs
    assert redirected_to(conn) == user_path(conn, :show, user)
>>>>>>> cdf4d9517022448a0c7623b66b9d330f6229c39a
    assert Repo.get_by(User, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    user = Repo.insert! %User{}
    conn = put conn, user_path(conn, :update, user), user: @invalid_attrs
<<<<<<< HEAD
    assert json_response(conn, 422)["errors"] != %{}
=======
    assert html_response(conn, 200) =~ "Edit user"
>>>>>>> cdf4d9517022448a0c7623b66b9d330f6229c39a
  end

  test "deletes chosen resource", %{conn: conn} do
    user = Repo.insert! %User{}
    conn = delete conn, user_path(conn, :delete, user)
<<<<<<< HEAD
    assert response(conn, 204)
=======
    assert redirected_to(conn) == user_path(conn, :index)
>>>>>>> cdf4d9517022448a0c7623b66b9d330f6229c39a
    refute Repo.get(User, user.id)
  end
end
