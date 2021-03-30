require 'byebug'

class MyClass

  def initialize(num)
    @num = num
  end

  def get_prime
    start = 2
    primes = (start..@num).to_a
    (start..@num).each do |no|
      (start..no).each do |num|
        if ( no % num  == 0) && num != no
          primes.delete(no)
          break
        end
      end
    end
    primes
  end

  def output(mas)
    matrix = []
    mas.size.times { matrix << mas }
    (mas.size - 1).times do
      p mas.push(mas.shift)
    end
  end

end

a = MyClass.new(10)
p a.get_prime
a.output(a.get_prime)
