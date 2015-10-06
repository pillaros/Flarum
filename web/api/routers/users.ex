defmodule Routers.Users do
<<<<<<< HEAD
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

=======
  use Maru.Router

  resources :users do
    get do
      UserController
    end
  end
>>>>>>> cdf4d9517022448a0c7623b66b9d330f6229c39a
end