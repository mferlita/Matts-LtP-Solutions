# frozen_string_literal: false

table_contents = [
  'Table of Contents', 'Chapter 1: Numbers', 'page 1', 'Chapter 2: Letters', 'page 2',
  'Chapter 3: Variables', 'page 3'
]

line_width = 50
count = 0

puts table_contents[0].center line_width
puts ''
while count != 6
  puts table_contents[count += 1].ljust(line_width / 2) + table_contents[count += 1].rjust(line_width / 2)
end
