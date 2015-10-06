defmodule Routers.Users do
  use Maru.Router

  resources :users do
    get do
      UserController
    end
  end
end