defmodule SerumCore.Router do
  defmacro __using__(_) do
    quote do
      import SerumCore.Router
      Module.register_attribute(__MODULE__, :routes, accumulate: true)
      @before_compile SerumCore.Router
    end
  end

  defmacro get(path, controller, action) do
    quote do
      @routes {:get, unquote(path), {unquote(controller), unquote(action)}}
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      def routes, do: @routes
    end
  end
end
