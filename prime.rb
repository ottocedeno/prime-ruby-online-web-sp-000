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

def method_name

end

def is_prime?(test_number)
  if test_number % 2 == 0
    false
  else
    true
  end
end

puts Benchmark.measure { prime?(1000000000) }

# Benchmark.bm(27) do |bm|
#   bm.report('Speed at 20') { prime?(20) }
#   bm.report('Speed at 2000000') { prime?(2000000) }
# end
