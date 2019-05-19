=begin
 Дан массив элементов произвольной природы. Необходимо разработать метод
max_odd(array), который определит максимальный нечетный элемент. Вернуть nil,
если таких элементов нет в переданном массиве.   
=end


class Integer
  N_BYTES = [42].pack('i').size
  N_BITS = N_BYTES * 16
  MAX = 2 ** (N_BITS - 2) - 1
  MIN = -MAX - 1
end

             
def max_odd(arr)
 check = false
 max = Integer::MIN
    for x in arr
    if x.class != String and x.class !=NilClass and x.class !=Array and x.to_i % 2 ==1 and x.to_i >max
         max = x.to_i
         check = true
     end
     if x.class == Array
         x.each do |y|
             if y.class != String and y.class !=NilClass and y.class !=Array and y.to_i % 2 ==1 and y.to_i >max
                 max = y.to_i
                 check = true
             end
         end
         
     end
 end
     if check == true
         return max
     else
         return nil
     end
 end
 
 puts max_odd([1, 2, 3, 4, 4])
 puts max_odd([21.0, 2, 3, 4, 4])
 puts max_odd(['ololo', 2, 3, 4, [1, 2], nil])
 puts max_odd(%w[ololo fufufu])
 puts max_odd([2, 2, 4])