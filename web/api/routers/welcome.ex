defmodule Routers.Welcome do
  use Maru.Router

  resources do
    get do

      %{hello: "world"}
    end
  end
end