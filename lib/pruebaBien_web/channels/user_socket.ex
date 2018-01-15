defmodule PruebaBienWeb.UserSocket do
  use Phoenix.Socket

  channel "temas:*", PruebaChannel
  ##get "/prueba/:id", PruebaController, :join, :handle_in

  transport :websocket, Phoenix.Transports.WebSocket

  def connect(_params, socket) do
    {:ok, socket}
  end


  def id(_socket), do: nil
end
