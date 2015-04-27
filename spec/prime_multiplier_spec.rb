require 'spec_helper'
describe 'prime_multiplier_table' do

  context 'when executed with parameter different from --count' do
    it 'generates an error' do
         expect { system("#{ROOT_PATH}/prime_multiplication_table.rb --option 2") }.to output("Unrecognised parameter\n").to_stdout_from_any_process
    end
  end

  context 'when executed with count not integer' do
    it 'generates an error' do
      expect { system("#{ROOT_PATH}/prime_multiplication_table.rb --count count") }.to output("Input must be positive integer\n").to_stdout_from_any_process
    end
  end
  context 'when executed with count not positive integer' do
    it 'generates an error' do
      expect { system("#{ROOT_PATH}/prime_multiplication_table.rb --count -22") }.to output("Input must be positive integer\n").to_stdout_from_any_process
    end
  end

  context 'when executed with --count 2' do
    it 'generates multiplication table of first 2 prime numbers' do

      expected_table = <<multiplication_table
  | 2   3
--+------
2 | 4   6
  |
3 | 6   9
multiplication_table
      expect { system("#{ROOT_PATH}/prime_multiplication_table.rb --count 2") }.to output(expected_table).to_stdout_from_any_process

    end
  end

  context 'when executed with --count 10' do
    it 'generates multiplication table of first 10 prime numbers' do

      expected_table = <<multiplication_table
   | 2     3     5     7     11    13    17    19    23    29
---+---------------------------------------------------------
2  | 4     6     10    14    22    26    34    38    46    58
   |
3  | 6     9     15    21    33    39    51    57    69    87
   |
5  | 10    15    25    35    55    65    85    95    115   145
   |
7  | 14    21    35    49    77    91    119   133   161   203
   |
11 | 22    33    55    77    121   143   187   209   253   319
   |
13 | 26    39    65    91    143   169   221   247   299   377
   |
17 | 34    51    85    119   187   221   289   323   391   493
   |
19 | 38    57    95    133   209   247   323   361   437   551
   |
23 | 46    69    115   161   253   299   391   437   529   667
   |
29 | 58    87    145   203   319   377   493   551   667   841
multiplication_table
      expect { system("#{ROOT_PATH}/prime_multiplication_table.rb --count 10") }.to output(expected_table).to_stdout_from_any_process

    end

  end


  context 'when executed with --count 11' do

    it 'generates multiplication table of first 11 prime numbers' do

      expected_table = <<multiplication_table
   | 2     3     5     7     11    13    17    19    23    29    31
---+---------------------------------------------------------------
2  | 4     6     10    14    22    26    34    38    46    58    62
   |
3  | 6     9     15    21    33    39    51    57    69    87    93
   |
5  | 10    15    25    35    55    65    85    95    115   145   155
   |
7  | 14    21    35    49    77    91    119   133   161   203   217
   |
11 | 22    33    55    77    121   143   187   209   253   319   341
   |
13 | 26    39    65    91    143   169   221   247   299   377   403
   |
17 | 34    51    85    119   187   221   289   323   391   493   527
   |
19 | 38    57    95    133   209   247   323   361   437   551   589
   |
23 | 46    69    115   161   253   299   391   437   529   667   713
   |
29 | 58    87    145   203   319   377   493   551   667   841   899
   |
31 | 62    93    155   217   341   403   527   589   713   899   961
multiplication_table
      expect { system("#{ROOT_PATH}/prime_multiplication_table.rb --count 11") }.to output(expected_table).to_stdout_from_any_process

    end

  end

end

