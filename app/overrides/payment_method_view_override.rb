Deface::Override.new(:virtual_path => 'spree/admin/payment_methods/_form',
                     :name => 'Environment section removal',
                     :remove => "[data-hook='environment']"
                     )