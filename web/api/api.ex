defmodule Flarum.API do
  use Maru.Router
  plug Plug.Logger, log: :debug
  mount Routers.Welcome
  mount Routers.Users
<<<<<<< HEAD
#  rescue_from :all do
#	status 500
# 	"Internal server error"
#  end

=======
  rescue_from :all do
    status 500
    "Internal server error"
  end
>>>>>>> cdf4d9517022448a0c7623b66b9d330f6229c39a
end