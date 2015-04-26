require 'spec_helper'
describe 'prime_multiplier_table' do

  it 'generates multiplication table of first 2 prime numbers' do

    expected_table = <<multiplication_table
  | 2   3
--+--------
2 | 4   6
  |
3 | 6   9
multiplication_table

    expect{system("#{ROOT_PATH}/prime_multiplication_table.rb 2")}.to output(expected_table).to_stdout_from_any_process

  end

  it 'generates multiplication table of first 4 prime numbers' do

    expected_table = <<multiplication_table
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

    expect{system("#{ROOT_PATH}/prime_multiplication_table.rb 2")}.to output(expected_table).to_stdout_from_any_process

  end

end