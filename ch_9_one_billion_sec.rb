# frozen_string_literal: false

matt = Time.new(1992, 2, 12, 2)
matt += 1_000_000_000
puts "Matt will have turned one billion seconds old on #{matt.strftime("%F at %r")}"
