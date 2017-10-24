# Enter your procedural solution here!

require 'pry'

def collect_multiples(limit)
  i = 3
  container = []
  while i < limit
    if i%3 == 0 || i%5==0
      container << i
    end
    i+=1
  end
  container
end

def sum_multiples(limit)
  sum_arr = collect_multiples(limit)
  sum_arr.inject{|sum, x| sum+x}
end

class Multiples

  attr_accessor :limit, :container

  def initialize(limit)
    @limit = limit
    @container = []
    if limit == nil
     "ArgumentError"
    end
  end

  def collect_multiples
    i = 3
    while i < @limit
      if i%3 == 0 || i%5==0
        @container << i
      end
      i+=1
    end
    @container
  end


  def sum_multiples
    collect_multiples.reduce(:+)
  end

end
