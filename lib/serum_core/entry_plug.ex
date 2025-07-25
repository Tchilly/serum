defmodule SerumCore.EntryPlug do
  def init(router), do: router

  def call(conn, router) do
    SerumCore.Endpoint.call(conn, router)
  end
end
