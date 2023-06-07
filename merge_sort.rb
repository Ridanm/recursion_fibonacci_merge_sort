#    Funcionamineto de Merge Sort 
# 1- División: La lista original se divide en dos mitades de tamaño similar
#    hasta que solo haya un elemento en cada mitad (considerado ordenado en sí mismo).
# 2- Ordenamiento recursivo: Las mitades se ordenan de forma recursiva aplicando el Merge Sort a cada mitad.
# 3- Fusión: Las mitades ordenadas se combinan en una nueva lista ordenada. En este paso, 
#    se comparan los elementos de las dos mitades y se colocan en orden en la nueva lista. 
#    El proceso de fusión continúa hasta que se combinen todas las mitades en una sola lista ordenada.


def merge_sort(array) 
  return array if array.size <= 1 

  # Divide an array call again
  middle = array.size / 2
  first_half = merge_sort(array[0, middle]) 
  second_half = merge_sort(array[middle..-1]) 

  # Combine it sorted halves 
  merge(first_half, second_half)
end

def merge(left, right)
  result = []

  # Compare and match items 
  until left.empty? || right.empty?
    if left.first <= right.first 
      result << left.shift
    else 
      result << right.shift 
    end
  end

  # Add remaining elements to halves 
  result.concat(left).concat(right)
end

numbers = [17, 14, 15, 12, 9, 3, 2, 1, 8]
letters = ['a', 'j', 'c', 'b', 'e', 'd', 'f']

puts merge_sort(numbers).join(', ')
puts merge_sort(letters).join(', ')

