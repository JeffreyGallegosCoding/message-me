App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    # This is how you can append the message that a user just posted to the chat
    # In coffee script you dont need paranthesis. Reg js would be: $('#message-container').append( data.foo)
    $('#message-container').append data.mod_message
