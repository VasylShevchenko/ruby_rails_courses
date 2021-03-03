require 'byebug'
require 'base64'

module FullName
  def full_name
    first_name + ' ' + last_name
  end
end

module ClassDef
  def foo
    puts 'foo'
  end
end

class User
  include FullName
  extend ClassDef

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

end

class Admin
  include FullName
  extend ClassDef

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def self.foo
    puts 'ok'
  end
end

jonh = User.new('John', 'Doe')
will = Admin.new('Will', 'Smith')


[1,2,3,4,5].each{|element| puts element}

