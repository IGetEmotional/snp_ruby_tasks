=begin
Дан массив array и числовой диапазон range. Разработайте метод coincidence(array,
range) для определения элементов из массива array, значения которых входят в
указанный диапазон. Если не передан хотя бы один из параметров, то должен
вернуться пустой массив.
=end

def coincidence(arr = nil, ran = nil)
    nam = []
    if !(arr ==nil or ran ==nil)
      for x in arr
         if x.class !=NilClass and ran.include?(x) ==true
         nam.push(x)
         end
      end    
   end 
       return nam     
    end


puts coincidence([1,2,3,4,5], (3..5))
puts coincidence([nil, 1, 'foo', 4, 2, 2.5], (1..3))
puts coincidence()




