Spree::Core::Engine.routes.draw do
  match '/gateway/:order_id/ccavenue/:payment_method_id' => 'ccavenue#show', :as => :gateway_ccavenue, via: [:get, :post]
  match '/gateway/ccavenue/:id/callback' => 'ccavenue#callback', :as => :gateway_ccavenue_callback, via: [:get, :post]
  match '/gateway/:order_id/:payment_id/ccavenue/:payment_method_id' => 'ccavenue#backend', :as => :gateway_ccavenue_backend, via: [:get, :post]
end
