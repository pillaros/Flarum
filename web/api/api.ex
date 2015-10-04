defmodule Flarum.API do
  use Maru.Router
  plug Plug.Logger, log: :debug
  mount Routers.Welcome
  rescue_from :all do
    status 500
    "Internal server error"
  end
end