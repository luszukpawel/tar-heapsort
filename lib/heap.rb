#def main
#  a = [3, 2, 1]
#  puts heapsort(a)
#  puts extract_max(a)
#end

def heapsort(input_array)
  heap_size = input_array.size
  j = (heap_size - 1) / 2
  while j >= 0
    maxheapify(input_array, heap_size, j)
    j -= 1
  end
  i = (input_array.size - 1)
  while i > 0
    input_array[0], input_array[i] = input_array[i], input_array[0]
    heap_size -= 1
    maxheapify(input_array, heap_size, 0)
    i -= 1
  end
  input_array
end

def heapsort_dec(input_array)
  heapsort(input_array).reverse
end

# def test(input_array, largest, index, heap_size)
  # return unless largest != index
  # input_array[index], input_array[largest] = input_array[largest], input_array[index]
  # maxheapify(input_array, heap_size, index)
# end

def getmaxvalue(input_array)
  maximum = input_array[0]
  input_array.each do |i|
    maximum = i if i > maximum
  end
  maximum
end

def removefromlist(input_array, x)
  input_array.delete(x)
  input_array
end

def addtolist(input_array)
  input_array.add(x)
  input_array
end

def get_size(input_array)
  x = input_array.size
  x
end

def empty?(input_array)
  return true if get_size(input_array).zero?
  false
end

def maxheapify(input_array, heap_size, index)
  left = (index + 1) * 2 - 1
  right = (index + 1) * 2
  largest = index
  largest = if left < heap_size && input_array[left] > input_array[index]
              left
            elsif right < heap_size && input_array[right] > input_array[largest]
              right
            else
              index
            end
  return unless largest != index
  input_array[index], input_array[largest] = input_array[largest], input_array[index]
  maxheapify(input_array, heap_size, index)
end
#main
