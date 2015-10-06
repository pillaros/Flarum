defmodule Routers.Users do
  use Phoenix.Router,
  use Flarum.Web
  alias Flarum.UserController, as: User
      pipeline :api do
        plug :accepts, ["json"]
      end
    scope path: "/" do
      pipe_through :api
      resources "/users", User
    end

end