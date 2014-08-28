class AESCrypter

  INIT_VECTOR = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15].pack('C*')

  def self.encrypt(plain_text, key)
    secret_key     = Digest::MD5.digest(key)
    cipher         = OpenSSL::Cipher::AES.new(128, :CBC)
    cipher.encrypt
    cipher.key     = secret_key
    cipher.iv      = INIT_VECTOR
    encrypted_text = cipher.update(plain_text) + cipher.final
    return (encrypted_text.unpack('H*')).first
  end

end