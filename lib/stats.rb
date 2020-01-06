def mean(set)
    Float(set.reduce(0, :+)) / set.length
  end
  
  def median(set)
    sorted = set.sort
    return sorted[set.length / 2 - 1] if set.length.odd?
    p = set.length / 2 - 1
    Float(mean([sorted[p], sorted[p + 1]]))
  end
  
  def mode(set)
    table = Hash.new{ |h, k| h[k] = 0 }
    number_and_counts = set.reduce(table) { |memo, e| memo[e] += 1; memo }
    top_count = -1
    top = -1
    number_and_counts.each_pair do |k, n|
      if n > top_count
        top_count = n
        top = k
      end
    end
    top
  end
  
  def standard_deviation(set)
    Math.sqrt(mean(set.map{ |n| (n - mean(set)) ** 2 }))
  end