require 'spec_helper'


describe MultiplicationTable do

  context '.generate' do

    context 'when an array of size n is passed as argument' do

      it 'returns a matrix[n,n] where the element (i,j) is array[i]*array[j]' do

        expect(MultiplicationTable.generate([1, 2, 3])).to eq([[1, 2, 3],
                                                               [2, 4, 6],
                                                               [3, 6, 9]])

        expect(MultiplicationTable.generate([2, 3, 5, 7, 11])).to eq([[4, 6, 10, 14, 22],
                                                                      [6, 9, 15, 21, 33],
                                                                      [10, 15, 25, 35, 55],
                                                                      [14, 21, 35, 49, 77],
                                                                      [22, 33, 55, 77, 121]
                                                                     ])
      end
    end

    context 'when an array with only one element is passed as argument' do

      it 'returns an array containing an array of array containing the square value of the element' do

        expect(MultiplicationTable.generate([3])).to eq([[9]])
      end
    end

    context 'when an object different from array is passed as argument' do
      it 'raises an exception' do
        expect { MultiplicationTable.generate(1) }.to raise_error('Only array are accepted')
      end
    end

    context 'when an multidimensional array is passed as argument' do
      it 'flattens it and generate the matrix' do
        expect(MultiplicationTable.generate([[1], [2], [3]])).to eq([[1, 2, 3],
                                                                     [2, 4, 6],
                                                                     [3, 6, 9]])

      end
    end
  end


end