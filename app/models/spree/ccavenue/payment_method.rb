module Spree
  class Ccavenue::PaymentMethod < Spree::PaymentMethod
    preference :merchant_id, :string
    preference :access_code, :string
    preference :encryption_key, :string

    # Hardcoded, because usually merchants don't know what it should look like
    def url
      'https://secure.ccavenue.com/transaction/transaction.do'
    end

    # Refer to Spree Commerce documentation for details
    def auto_capture?
      true
    end

    # def actions
    #   %w{capture void}
    # end

    # # Indicates whether its possible to capture the payment
    # def can_capture?(payment)
    #   ['checkout', 'pending'].include?(payment.state)
    # end

    # # Indicates whether its possible to void the payment.
    # def can_void?(payment)
    #   payment.state != 'void'
    # end

    # def capture(*args)
    #   simulated_successful_billing_response
    # end

    # def void(*args)
    #   simulated_successful_billing_response
    # end

    # Following methods are required to comply with Spree
    def purchase(amount, source, options = {})
      Class.new do
        def success?;
          true;
        end

        def authorization;
          nil;
        end
      end.new
    end

    def provider_class
      Spree::Ccavenue::Transaction
    end

    def payment_source_class
      Spree::Ccavenue::Transaction
    end

    def method_type
      'ccavenue'
    end

    # private

    # def simulated_successful_billing_response
    #   ActiveMerchant::Billing::Response.new(true, "", {}, {})
    # end

  end

end
