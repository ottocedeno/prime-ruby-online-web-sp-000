require 'benchmark'
require 'pry'
def prime?(test_number)
  if test_number > 1
    number_range = (2..(test_number-1)).to_a

    number_range.each do |number|
      if test_number % number == 0
         return false
      end
    end

    return true

  end

  return false

end

puts Benchmark.measure {prime?(10000000)}
