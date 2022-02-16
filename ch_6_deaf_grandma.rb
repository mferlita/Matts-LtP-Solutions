# frozen_string_literal: false

grandchild = ''
bye_count = 0

puts 'HELLO, DEARY!'

loop do
  grandchild = gets.chomp
  if grandchild != grandchild.upcase
    bye_count = 0
    puts 'HUH?! SPEAK UP, DEAR!'
  elsif grandchild == 'bye'.upcase
    bye_count += 1
    break if bye_count == 3
  else
    bye_count = 0
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  end
end
