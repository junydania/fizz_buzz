
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

usingeach_output = []   #Testing each for number iteration
(0...100).each {|n| usingeach_output << (fizz_buzz(n+1))}
puts usingeach_output.inspect

usingstep_output = []     #testing step for number iteration
(0...100).step {|n| usingstep_output << (fizz_buzz(n+1))}
puts usingstep_output.inspect

usingtimes_output = []     # Testing times for number iteration
100.times {|n| usingtimes_output << (fizz_buzz(n+1))}
puts usingtimes_output.inspect
