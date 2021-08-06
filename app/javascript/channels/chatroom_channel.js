import consumer from "./consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    console.log("connected...");
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data);
    // if(data.username != undefined)
    //   $("#online-users").append(data.username);
    $("#message-box").append(data.user_message);
     if($("#messages").length > 0){
        $("#messages").scrollTop($("#messages")[0].scrollHeight);
    }
    // Called when there's incoming data on the websocket for this channel
  }
});
