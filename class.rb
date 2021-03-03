require "byebug"

class User
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    first_name + ' ' + last_name
  end

  # attr_reader
  # def first_name
  #   @first_name
  # end

  # attr_writer
  # def first_name=(first_name)
  #   @first_name = first_name
  # end
end

user = User.new('John', 'Doe')
user.first_name
user.last_name
user.full_name

user.first_name = 'Ali'
user.first_name

# Class and Instance Variables In Ruby
# PI = '3.14'.freeze
# $global_variable = 'global variable'
# @@class_variable = 'class variable'
# @instance_variable = 'instance variable'
# local_variables = 'local variable'

class ClassA
  $global_variable = 'it is a global variable'
  @@foo = 'Class A'

  # class << self;
  #   attr_accessor :foo
  # end

  def self.foo
    @@foo
  end

  def self.foo=(foo)
    @@foo = foo
  end
end

class ClassB < ClassA
  @@foo = 'Class B'
end

class ClassC < ClassB
  @@foo = 'Class C'
end

ClassA.foo
ClassB.foo
ClassC.foo
