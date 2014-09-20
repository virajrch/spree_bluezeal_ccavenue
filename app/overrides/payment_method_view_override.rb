Deface::Override.new(:virtual_path => 'spree/admin/payment_methods/_form',
                     :name => 'Environment section removal',
                     :remove => "[data-hook='environment']"
                     )
Deface::Override.new(:virtual_path => 'spree/admin/payment_methods/_form',
                     :name => 'URL label removal',
                     :remove => "label[for='ccavenue_payment_method_preferred_url']",
                     )
Deface::Override.new(:virtual_path => 'spree/admin/payment_methods/_form',
                     :name => 'URL input removal',
                     :remove => 'input#ccavenue_payment_method_preferred_url',
                     )
