require 'matrix'

class MultiplicationTable

  def self.generate array
    raise Exception.new('Only arrays are accepted') unless array.is_a?(Array)
    flatten_array = array.flatten
    flatten_array.collect { |j| (j*Vector[*flatten_array]).to_a }
  end

end