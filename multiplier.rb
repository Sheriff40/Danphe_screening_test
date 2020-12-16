(1..100).each do |num|
  divisible_by_3 = num%3 == 0
  divisible_by_5 = num%5 == 0

  if divisible_by_3 && divisible_by_5
    puts 'FizzBuzz'
  elsif divisible_by_3
    puts 'Fizz'
  elsif divisible_by_5
    puts 'Buzz'
  else
    puts num
  end
end