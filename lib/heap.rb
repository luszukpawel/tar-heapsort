def main
  a = [3, 2, 1]
  puts heapsort(a)
end

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

def test(input_array, largest, index, heap_size)
  return unless largest != index
  input_array[index], input_array[largest] = input_array[largest], input_array[index]
  maxheapify(input_array, heap_size, index)
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
