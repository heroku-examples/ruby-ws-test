require 'sinatra'
require 'faye/websocket'
require 'json'
Faye::WebSocket.load_adapter('thin')

App = lambda do |env|
  if Faye::WebSocket.websocket?(env)
    ws = Faye::WebSocket.new(env)

    ws.on :open do |e|
      puts "websocket connection open"
      timer = EM.add_periodic_timer(1) do
        begin
          ws.send(Time.now.to_s.to_json)
        rescue NoMethodError
          EM.cancel_timer(timer)
        end
      end
    end

    ws.on :close do |event|
      puts "websocket connection closed"
      ws = nil
    end

    ws.rack_response
  else
    if env["REQUEST_PATH"] == "/"
      [200, {}, File.read('./index.html')]
    else
      [404, {}, '']
    end
  end
end
