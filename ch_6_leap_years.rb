# frozen_string_literal: false

puts 'Please enter a starting year.'
start_year = gets.to_i
puts 'Please enter an ending year.'
end_year = gets.to_i
puts 'The leap years are:'

while start_year <= end_year
  if (start_year % 400).zero?
    puts start_year
  elsif (start_year % 100).zero?
    puts ''
  elsif (start_year % 4).zero?
    puts start_year
  end
  start_year += 1
end
