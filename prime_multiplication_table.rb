#!/usr/bin/ruby
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'lib/prime_numbers_generator'
require 'lib/multiplication_table'
require 'lib/table_printer'
require 'lib/command_line'

options = CommandLine.parse_options(ARGV)
prime_numbers = PrimeNumbersGenerator.generate options.count
multiply_table = MultiplicationTable.generate prime_numbers
table_printer_new = TablePrinter.new(multiply_table)
table_printer_new.add_header(prime_numbers)
table_printer_new.draw
