require './app'
$stdout.sync = true
Faye::WebSocket.load_adapter('thin')
run App
