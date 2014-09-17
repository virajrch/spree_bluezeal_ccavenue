Spree::Core::Engine.routes.draw do
  match '/gateway/:order_id/ccavenue/:payment_method_id' => 'ccavenue#show', :as => :gateway_ccavenue, via: [:get, :post]
  get '/gateway/ccavenue/:id/callback' => 'ccavenue#callback', :as => :gateway_ccavenue_callback
end
