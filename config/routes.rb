Spree::Core::Engine.routes.draw do
  get "/gateway/:order_id/ccavenue/:payment_method_id" => 'ccavenue/gateway#show', :as => :gateway_ccavenue
  get "/gateway/ccavenue/:id/callback" => 'ccavenue_gateway#callback', :as => :gateway_ccavenue_callback
end
