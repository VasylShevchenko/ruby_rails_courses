require "byebug"

class SupperClass
  def action
    puts 'SupperClass'
  end
end

module IncludeModule
  def action
    puts 'IncludeModule'
    super
  end
end

module PrependModule
  def action
    puts 'PrependModule'
    super
  end
end

module ExtendModule
  def action
    puts 'ExtendModule'
    super
  end
end

class Klass < SupperClass
  include IncludeModule
  prepend PrependModule

  def action
    puts 'Class'
    super
  end
end

instance = Klass.new
instance.extend ExtendModule
instance.action

instance2 = Klass.new
instance2.action
