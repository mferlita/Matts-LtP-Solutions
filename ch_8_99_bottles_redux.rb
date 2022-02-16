# frozen_string_literal: false

def english_number(number)
  return 'Please enter a number that isn\'t negative.' if number.negative?
  return 'zero' if number.zero?

  num_string = ''

  ones_place = %w[one two three four five six seven eight nine]
  tens_place = %w[ten twenty thirty forty fifty sixty seventy eighty ninety]
  teenagers = %w[eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]

  left = number

  write = left / 1_000_000_000_000
  left -= write * 1_000_000_000_000
  if write.positive?
    trillions = english_number(write)
    num_string = "#{num_string}#{trillions} trillion"
    num_string += ' ' if left.positive?
  end

  write = left / 1_000_000_000
  left -= write * 1_000_000_000
  if write.positive?
    billions = english_number(write)
    num_string = "#{num_string}#{billions} billion"
    num_string += ' ' if left.positive?
  end

  write = left / 1_000_000
  left -= write * 1_000_000
  if write.positive?
    millions = english_number(write)
    num_string = "#{num_string}#{millions} million"
    num_string += ' ' if left.positive?
  end

  write = left / 1000
  left -= write * 1000
  if write.positive?
    thousands = english_number(write)
    num_string = "#{num_string}#{thousands} thousand"
    num_string += ' ' if left.positive?
  end

  write = left / 100
  left -= write * 100
  if write.positive?
    hundreds = english_number(write)
    num_string = "#{num_string}#{hundreds} hundred"
    num_string += ' ' if left.positive?
  end

  write = left / 10
  left -= write * 10
  if write.positive?
    if (write == 1) && left.positive?
      num_string += teenagers[left - 1]
      left = 0
    else
      num_string += tens_place[write - 1]
    end
    num_string += '-' if left.positive?
  end

  write = left
  left = 0
  num_string += ones_place[write - 1] if write.positive?

  num_string
end

num = 10_000

while num > 1
  if num > 3
    num -= 1
    puts "#{english_number(num)} bottles of beer on the wall! #{english_number(num)} bottles of beer!
Take one down, pass it around, #{english_number(num - 1)} bottles of beer on the wall!"
    puts ''
  elsif num != 2
    num -= 1
    puts "#{english_number(num)} bottles of beer on the wall! #{english_number(num)} bottles of beer!
Take one down, pass it around, #{english_number(num - 1)} bottle of beer on the wall!"
    puts ''
  else
    num -= 1
    puts "#{english_number(num)} bottle of beer on the wall! #{english_number(num)} bottle of beer!
Take one down, pass it around, no bottles of beer on the wall!"
  end
end
