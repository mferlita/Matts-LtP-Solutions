# frozen_string_literal: false

line_width = 50
title = 'Table of Contents'
ch1 = 'Chapter 1: Numbers'
ch2 = 'Chapter 2: Letters'
ch3 = 'Chapter 3: Variables'
ch1pg = 'page 1'
ch2pg = 'page 72'
ch3pg = 'page 118'

puts title.center line_width
puts ch1.ljust(line_width / 2) + ch1pg.rjust(line_width / 2)
puts ch2.ljust(line_width / 2) + ch2pg.rjust(line_width / 2)
puts ch3.ljust(line_width / 2) + ch3pg.rjust(line_width / 2)
