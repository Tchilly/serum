defmodule Serum.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    Config.Reader.read!("config/app.exs")
    |> Enum.each(fn {app, opts} ->
      Enum.each(opts, fn {key, val} ->
        Application.put_env(app, key, val)
      end)
    end)

    Code.require_file("routes/web.exs", File.cwd!())

    children = [
      {
        Plug.Cowboy,
        scheme: :http,
        plug: {
          SerumCore.EntryPlug,
          App.Router
        },
        options: [port: 4000]
      }
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Serum.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
