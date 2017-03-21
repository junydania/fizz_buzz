
def fizz_buzz(number)

  if zero_remainder?(number,15)
    'Fizz Buzz'

  elsif zero_remainder?(number,5)
    'Buzz'

  elsif
  zero_remainder?(number,3)
    'fizz'

  else
    number
  end

end

def zero_remainder?(number, divider)
  number % divider == 0
end

game_output = []
(0...100).each {|n| game_output << (fizz_buzz(n+1))}

puts game_output.inspect
