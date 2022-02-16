# frozen_string_literal: false

list = []
alphabetized_list = []

guest = ''

loop do
  guest = gets.chomp
  if guest != ''
    list.push guest
  elsif guest == ''
    alphabetized_list.push list.delete(list.min) until list.empty?
    puts "This list contains: #{alphabetized_list.join(', ')}"
    break
  end
end
