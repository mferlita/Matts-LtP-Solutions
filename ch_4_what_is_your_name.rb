# frozen_string_literal: false

puts 'Hello, what\'s your first name?'
firstname = gets.chomp
puts 'And your middle name?'
middlename = gets.chomp
puts 'What abour your last name?'
lastname = gets.chomp
puts "Hello, #{firstname} #{middlename} #{lastname}. It\'s nice to meet you."
char_in_name = firstname.length + middlename.length + lastname.length
puts "Did you know that there are #{char_in_name} characters in your name?"
