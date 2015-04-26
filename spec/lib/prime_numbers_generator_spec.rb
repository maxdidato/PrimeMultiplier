require 'spec_helper'
require 'prime'

describe PrimeNumbersGenerator do


  describe '.generate' do

    context 'when a positive integer n is passed' do

      it 'returns a vector containing the first n prime numbers' do

        expect(PrimeNumbersGenerator.generate(4)).to eq(Prime.take(4))

        expect(PrimeNumbersGenerator.generate(10)).to eq(Prime.take(10))

        expect(PrimeNumbersGenerator.generate(100)).to eq(Prime.take(100))
      end
    end

    context 'when 0 is passed' do

      it 'returns an empty array' do
        expect(PrimeNumbersGenerator.generate(0)).to eq([])
      end
    end

    context 'when a negative number is passed' do

      it 'returns an empty array' do
        expect(PrimeNumbersGenerator.generate(-1)).to eq([])
      end
    end
  end


end