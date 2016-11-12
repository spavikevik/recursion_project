def sort(array)
  return array if array.length == 1
  
  mid = array.length / 2
  left, right = array[0...mid], array[mid...array.length]
  
  left = sort left
  right = sort right
  merge left, right
end

def merge(left, right)
  merged = []
  until left.empty? || right.empty?
    if left.first < right.first
      merged << left.shift
    else
      merged << right.shift
    end
  end
  
  merged += left + right
end
