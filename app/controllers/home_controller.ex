defmodule HomeController do
  import Plug.Conn

  def index(conn) do
    app_name = Application.get_env(:app, :name, "Serum")

    conn
    |> send_resp(200, "Welcome to #{app_name}!")
  end
end
