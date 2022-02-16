# frozen_string_literal: false

list = []

guest = ''

loop do
  guest = gets.chomp
  if guest != ''
    list.push guest
  elsif guest == ''
    puts "This list contains: #{list.sort}"
    break
  end
end
