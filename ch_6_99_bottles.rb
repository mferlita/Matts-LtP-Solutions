# frozen_string_literal: false

num = 100

while num > 1
  if num > 3
    num -= 1
    puts "#{num} bottles of beer on the wall! #{num} bottles of beer!
Take one down, pass it around, #{num - 1} bottles of beer on the wall!"
    puts ''
  elsif num != 2
    num -= 1
    puts "#{num} bottles of beer on the wall! #{num} bottles of beer!
Take one down, pass it around, #{num - 1} bottle of beer on the wall!"
    puts ''
  else
    num -= 1
    puts "#{num} bottle of beer on the wall! #{num} bottle of beer!
Take one down, pass it around, no bottles of beer on the wall!"
  end
end
