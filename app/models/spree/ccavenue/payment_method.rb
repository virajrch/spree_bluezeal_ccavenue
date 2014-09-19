class Spree::Ccavenue::PaymentMethod < Spree::PaymentMethod
  preference :merchant_id,    :string
  preference :access_code,    :string
  preference :encryption_key, :string
  preference :url,            :string, :default => 'https://secure.ccavenue.com/transaction/transaction.do'

  def auto_capture?
    true
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
