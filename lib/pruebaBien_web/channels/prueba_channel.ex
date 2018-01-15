defmodule PruebaChannel do
    use PruebaBienWeb, :channel
    alias PruebaBien.Repo
    alias Usuario

    def join("temas:" <> id_tema, _params, socket) do
        id_tema_integer = String.to_integer(id_tema)
        tema_actual = Tema
            |> Repo.get( id_tema_integer)
            ##|> Repo.preload(:usuarios)
            {:ok, %{temas: "{hola: bien}"}, assign(socket, :tema, tema_actual)}
    end

    def handle_in(nombre, %{"nombre" => valor}, socket) do
        IO.puts("valor que se recibe: " <> valor)
        prueba_socket = socket.assigns.tema

        ##changeset_1 = Tema.changeset(%Tema{},%{nombre: valor, descripcion: "como estas----"})
        ##Repo.insert(changeset_1)
        ##numero = :rand.uniform(0..10)
        changesetUsuario = Usuario.changeset(%Usuario{}, %{nombre: valor, valor: 3})
        case Repo.insert(changesetUsuario)do
            {:ok, valor} ->
                ##broadcast!(socket, "temas:#{socket.assigns.tema.id}:new",
                ##    %{tema: tema}
                ##)
                {:reply, :ok, socket}
            {:error, valor}
                {:reply, {:error, %{errors: changesetUsuario}}, socket}
        end

        ##variable = Prueba.changeset(%Prueba{}, %{id: 10, nombre: "algo"})
        ##Repo.insert(variable)
       ## IO.puts("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% " <> variable)
        ##{:reply, :ok, socket}
    end 
end