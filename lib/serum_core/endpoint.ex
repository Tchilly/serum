defmodule SerumCore.Endpoint do
  def call(conn, router) do
    route =
      Enum.find(router.routes(), fn {verb, path, _} ->
        verb == String.downcase(conn.method) |> String.to_atom() and
          path == "/" <> Enum.join(conn.path_info, "/")
      end)

    case route do
      {_, _, {controller, action}} -> apply(controller, action, [conn])
      _ -> Plug.Conn.send_resp(conn, 404, "Not Found")
    end
  end
end
