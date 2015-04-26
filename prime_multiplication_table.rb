#!/usr/bin/ruby
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'lib/prime_numbers_generator'
require 'lib/multiplication_table'
puts <<multiplication_table
  | 2   3   5   7
--+----------------
2 | 4   6   10  14
  |
3 | 6   9   15  21
  |
5 | 10  15  25  35
  |
7 | 14  21  35  49
multiplication_table
