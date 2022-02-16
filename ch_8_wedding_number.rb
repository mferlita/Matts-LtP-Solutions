# frozen_string_literal: false

def wedding_number(number)
  return 'Please enter a number that isn\'t negative.' if number.negative?
  return 'Please enter number less than 10,000' if number >= 10_000
  return 'zero' if number.zero?

  num_string = ''

  ones_place = %w[one two three four five six seven eight nine]
  tens_place = %w[ten twenty thirty forty fifty sixty seventy eighty ninety]
  teenagers = %w[eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]

  left = number

  write = left / 100
  left -= write * 100
  if write.positive?
    hundreds = wedding_number(write)
    num_string = "#{num_string}#{hundreds} hundred"
    num_string += ' and ' if left.positive?
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
    num_string += ' and ' if left.positive?
  end

  write = left
  left = 0
  num_string += ones_place[write - 1] if write.positive?

  num_string
end

puts wedding_number(1876)
puts wedding_number(1998)
puts wedding_number(2016)
puts wedding_number(11_453)
