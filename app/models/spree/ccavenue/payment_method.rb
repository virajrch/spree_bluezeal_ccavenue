class Spree::Ccavenue::PaymentMethod < Spree::PaymentMethod
  preference :merchant_id,    :string
  preference :access_code,    :string
  preference :encryption_key, :string
  #preference :url,            :string, :default => 'https://secure.ccavenue.com/transaction/transaction.do'

  def preferred_url
    'https://secure.ccavenue.com/transaction/transaction.do'
  end

  def preferred_url_type
    ''
  end

  def auto_capture?
    true
  end

  def purchase(amount, source, options = {})
    Class.new do
      def success?; true; end
      def authorization; nil; end
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

end
