defmodule Flarum.V1.UserView do
  use Flarum.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, Flarum.V1.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Flarum.V1.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      id_str: user.id_str,
      screen_name: user.screen_name}
  end
end
