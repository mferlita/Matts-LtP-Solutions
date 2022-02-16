# frozen_string_literal: false

common_year = 365 * 24
decade_minutes = ((60 * 24) * 365) * 10
me_in_seconds = (((60 * 24) * 365) * (Time.new.year.to_i - 1992)) * 60
pushups_in_life = (100 * 365) * 100
secs_old_to_years_old = 1_406_000_000 / (((60 * 24) * 365) * 60)

puts '***This program calculates approximate measurements of time. Precise measurements will differ.***'
puts "There are #{common_year} hours in a common year."
puts "There are #{decade_minutes} minutes in a decade."
puts "Matt is #{me_in_seconds} seconds old."
puts "If I perform 100 pushups a day for 100 years, I will have performed #{pushups_in_life} push-ups."
puts "If I am 1,406,000,000 seconds old, I am #{secs_old_to_years_old} years old."
