# frozen_string_literal: false

require 'time'

puts 'Please enter your birthdate in yyyy-mm-dd format.'
birthdate = gets.chomp
num_of_spanks = (Time.new - Time.strptime(birthdate.to_s, '%F')) / (((60 * 24) * 365) * 60)
puts 'Happy Birthday!'

count = 1
while count <= num_of_spanks.to_i
  puts 'SPANK!'
  count += 1
end
