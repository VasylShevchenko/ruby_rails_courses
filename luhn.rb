# frozen_string_literal: false

require 'byebug'

def valid(card_number)
  raise 'invalid card number' unless card_number.scan(/\D/).empty?

  (card_number.reverse.chars.map(&:to_i).map.with_index do |element, index|
    element *= 2 if (index + 1).even?
    element -= 9 if element > 9
    element
  end.sum % 10).zero?
end
