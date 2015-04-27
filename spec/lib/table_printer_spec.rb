require 'spec_helper'

describe TablePrinter do

  context '#draw' do
    context 'when an array of arrays is passed as parameter' do


      subject { TablePrinter.new([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) }
      it 'format the output printing each array on a separate line' do
        expected_output = <<formatted_table
1   2   3

4   5   6

7   8   9
formatted_table
        expect { subject.draw }.to output(expected_output).to_stdout


      end


    end

    context 'when a header is added' do

      subject { TablePrinter.new([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) }
      it 'draws the table using the header for rows and columns' do
        expected_output = <<formatted_table
  | 2   3   5
--+----------
2 | 1   2   3
  |
3 | 4   5   6
  |
5 | 7   8   9
formatted_table
        subject.add_header([2, 3, 5])
        subject.draw
        expect { subject.draw }.to output(expected_output).to_stdout
      end
    end


    context 'when numbers with different size are passed as parameter' do

      subject { TablePrinter.new([[1000, 2, 3], [4, 5000, 6], [7, 8, 9]]) }
      it 'keeps the layout correct' do
        expected_output = <<formatted_table
  | 2      3      5
--+----------------
2 | 1000   2      3
  |
3 | 4      5000   6
  |
5 | 7      8      9
formatted_table
        subject.add_header([2, 3, 5])
        subject.draw
        # expect { subject.draw }.to output(expected_output).to_stdout
      end

    end

  end
end