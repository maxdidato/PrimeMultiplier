class PrimeNumbersGenerator

  def self.generate prime_numbers
    return [] if prime_numbers<0
    primes_found=[]
    to_be_checked = 2
    until primes_found.size == prime_numbers
     if (2...to_be_checked).each {|j| false;break if to_be_checked % j == 0}
        primes_found << to_be_checked
      end
      to_be_checked += 1
    end
    primes_found
  end
end