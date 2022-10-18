#sum av to tall
def sum_eq_n?(arr, n)
    return true if arr.empty? && n == 0
  
    arr.product(arr).reject { |a,b| a == b }.any? { |a,b| a + b == n }
end

#aritmetisk rekke
def find_missing(sequence)
    consecutive     = sequence.each_cons(2)
    differences     = consecutive.map { |a,b| b - a }
    sequence        = differences.max_by { |n| differences.count(n) }
  
    missing_between = consecutive.find { |a,b| (b - a) != sequence }
  
    missing_between.first + sequence
  end
  
  puts find_missing([2,4,6,10])
  # 8

  #finner bokstav repetert flest ganger i en string
  def longest_repetition(string)
    max = string
            .chars
            .chunk(&:itself)
            .map(&:last)
            .max_by(&:size)
  
    max ? [max[0], max.size] : ["", 0]
  end
  
  longest_repetition("aaabb")
  # ["a", 3]

