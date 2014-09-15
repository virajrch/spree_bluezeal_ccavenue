Spree::Core::Engine.routes.draw do
  post '/gateway/:order_id/ccavenue/:payment_method_id' => 'ccavenue#show', :as => :gateway_ccavenue
  get '/gateway/ccavenue/:id/callback' => 'ccavenue#callback', :as => :gateway_ccavenue_callback
end
