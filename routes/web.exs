defmodule App.Router do
  use SerumCore.Router

  get("/", HomeController, :index)
end
