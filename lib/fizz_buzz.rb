def fizz_buzz(number)
  # TODO: return an array of integers, 'Fizz', 'Buzz' or 'FizzBuzz'
  array = (1..number).to_a

  fail ArgumentError, "#{number} should be greater than 1" if number < 1

  array.each.with_index do |c, i|
    if c % 3 == 0 && c % 5 == 0
      array[i] = "FizzBuzz"
    else
      if c % 3 == 0
        array[i] = "Fizz"
      end

      if c % 5 == 0
      array[i] = "Buzz"
      end
    end

  end
  return array
end

puts fizz_buzz(15).inspect
