require 'byebug'

def valid(card_number)
  raise 'invalid card number' unless card_number.scan(/\D/).empty?

  card_number.reverse.chars.map(&:to_i).map.with_index do |element, index|
    element *= 2 if (index + 1).even?
    element -= 9 if element > 9
    element
  end.sum % 10 == 0
end

p valid('7992739871')
p valid('4111111111111111')
p valid('371449635398431')
p valid('371449635398431')
p valid('6011111111111117')
p valid('5555555555554444')
p valid('4111111111111111')
p valid('79927398710')
p valid('79927398711')
p valid('79927398712')
p valid('79927398713')
p valid('79927398714')
p valid('79927398715')
p valid('79927398716')
p valid('79927398717')
p valid('79927398718')
p valid('79927398719')
