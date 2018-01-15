// NOTE: The contents of this file will only be executed if
// you uncomment its entry in "assets/js/app.js".

// To use Phoenix channels, the first step is to import Socket
// and connect at the socket path in "lib/web/endpoint.ex":
import { Socket } from "phoenix"

let socket = new Socket("/socket", { params: { token: window.userToken } })


socket.connect()

const createSocket = (id) => {
  // Now that you are connected, you can join channels with a topic:
  let channel = socket.channel(`temas:${id}`, {})
  channel.join()
    .receive("ok", resp => { console.log("Joined successfully", resp) })
    .receive("error", resp => { console.log("Unable to join", resp) })
    document.querySelector("button").addEventListener("click", () => {
      const nombre = document.getElementById("valorId").value;
      channel.push("tema:add", { nombre: nombre });
    })
}
window.createSocket = createSocket;

//export default socket
