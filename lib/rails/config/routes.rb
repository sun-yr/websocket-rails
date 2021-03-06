Rails.application.routes.draw do
  if Rails.version >= '4.0.0'
    match "/websocket/io", :to => WebsocketRails::ConnectionManager.new, via: [:get, :post]
  else
    match "/websocket/io", :to => WebsocketRails::ConnectionManager.new
  end
end
