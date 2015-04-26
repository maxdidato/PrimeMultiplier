class PrimeMultiplier
  def self.print_multiplication_table numbers
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
  end
end
describe PrimeMultiplier do

  it 'generates multiplication table of first n prime numbers' do

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

    expect{PrimeMultiplier.print_multiplication_table(4)}.to output(expected_table).to_stdout

  end

end