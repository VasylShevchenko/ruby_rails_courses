require 'byebug'
require 'base64'

class User
  attr_accessor :username
  attr_reader :password

  def initialize(username, email, password)
    @username = username
    @email = email
    @password = encode_password(password)
  end

  def email
    @email
  end

  def ==(other_user)
    self.secret == other_user.secret
  end

  def public_decode_password
    decode_password
  end

  protected
  def secret
    "#{username}.#{email}"
  end

  private
  def encode_password(text)
    Base64.encode64(text)
  end

  def decode_password
    Base64.decode64(password)
  end
end


jonh = User.new('John', 'example@com', '1234')
will = User.new('Will', 'example@com', '1234')
puts jonh == will

jonh.public_decode_password
jonh.public_send :public_decode_password

jonh.send :decode_password
