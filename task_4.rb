=begin
Дан массив целых чисел. Необходимо разработать метод sort_array(array),который
поменяет местами минимальные и максимальные элементы массива, а также
добавит в конец массива одно минимальное значение из него.
=end

def sort_array(arr = nil)
if arr[0].class !=NilClass and arr!=nil
min = arr.min
max = arr.max
min_list = []
max_list = []
num = 0
      for x in arr do
      if x == min
      min_list.push(num)
      end
      if x == max
      max_list.push(num)
      end
      num+=1
      end

for x in min_list do
arr[x] = max
end
for x in max_list do
arr[x] = min
end
arr.push(min)
return arr
end
end

puts sort_array([2, 4, 6, 8])
puts sort_array([])
puts sort_array([1])
 puts sort_array([1, 2, 1, 3])