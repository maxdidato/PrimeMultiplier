require 'spec_helper'

describe CommandLine do

  context 'parse_options' do

    it 'not rasies any error if proper parameter is passed' do
      expect{CommandLine.parse_options(['--count','1'])}.to_not raise_error
    end

    it 'exits if option unrecognised' do
      expect{CommandLine.parse_options(['-invalid_option','value'])}.to raise_error(SystemExit)
    end

    it 'exits if count is not an integer' do
      expect{CommandLine.parse_options(['--count','string'])}.to raise_error(SystemExit)
    end

    it 'exits if count is not a positive integer' do
      expect{CommandLine.parse_options(['--count','-1'])}.to raise_error(SystemExit)
    end


  end

  end