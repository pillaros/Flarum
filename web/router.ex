defmodule Flarum.Router do
  use Flarum.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Flarum do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index
    resources "/users", UserController
  end

  scope "/", Flarum do
    scope "/v1", V1, as: :v1 do
        pipe_through :api
        resources "/users", UserController
    end
  end
end
