class PrimeNumbersGenerator

  def self.generate prime_numbers
    return [] if prime_numbers<0
    primes_found=[]
    to_be_checked = 2
    until primes_found.size == prime_numbers
      unless (2..to_be_checked-1).map { |j| to_be_checked % j }.include?(0)
        primes_found << to_be_checked
      end
      to_be_checked += 1
    end
    primes_found
  end
end