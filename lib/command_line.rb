require 'optparse'
require 'ostruct'
class CommandLine
  class NonPositiveIntegerException < Exception;
  end

  def self.parse_options(args)
    options = OpenStruct.new
    begin
      OptionParser.new do |opts|
        opts.on("--count COUNT", "number of prime numbers to multiply") do |count|
          raise NonPositiveIntegerException unless count.to_i>0
          options.count = count.to_i
        end
      end.parse(args)
      raise OptionParser::InvalidOption unless options.count
    rescue OptionParser::InvalidOption
      puts 'Unrecognised parameter'
      exit(1)
    rescue NonPositiveIntegerException
      puts 'Input must be positive integer'
      exit(1)
    end
    options
  end
end
