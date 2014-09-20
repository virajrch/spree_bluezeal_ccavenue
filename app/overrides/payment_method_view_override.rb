Deface::Override.new(:virtual_path => 'spree/admin/payment_methods/_form',
                     :name => 'Environment and URL section removal',
                     :remove => "label[for='ccavenue_payment_method_preferred_url']",
                     :remove => 'input#ccavenue_payment_method_preferred_url',
                     :remove => "[data-hook='environment']"
                     )