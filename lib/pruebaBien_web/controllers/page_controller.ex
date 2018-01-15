defmodule PruebaBienWeb.PageController do
  use PruebaBienWeb, :controller
  alias PruebaBien.Repo
  def index(conn, _params) do
    render conn, "index.html"
  end


  def show(conn, %{"id" => id}) do
    tema = Repo.get(Tema, id)
    usuarios = Repo.all(Usuario)
    render conn, "muestra.html", tema: tema, usuarios: usuarios
  end


end
