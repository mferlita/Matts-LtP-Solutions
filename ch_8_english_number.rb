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
  left = 0 # This is techincally not needed, since it is not used in the following condition. Included for clarity.
  num_string += ones_place[write - 1] if write.positive?

  num_string
end

puts english_number(-2)
puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999_999)
puts english_number(777_777_777)
puts english_number(888_888_888_888)
puts english_number(1_000_000_000_000)
puts english_number(999_888_777_666_555)
