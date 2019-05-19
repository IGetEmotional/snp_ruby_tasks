=begin
Написать метод multiply_numbers(inputs), который вернет произведение цифр,
входящих в inputs.
=end

def multiply_numbers(inputs = nil)
     if inputs==nil
         return nil
     else
            num = 1
            check = false
            
        if inputs.class ==Float
        inputs = inputs.to_s
      end
      
       if inputs.class == String
        ran = ('0'..'9').to_a

       inputs.each_char{|y|
           if ran.include?(y)
               check = true
               num = num*(y.to_i)
           end
       }
       end
       
       if inputs.class == Array
        for x in inputs do
           if x.class == Integer or x.class == Fixnum
               num = num*x
               check = true
           end
        end
       end
       
       if check == true
        return num
      else
        return nil
      end
 end
 end
 
 
 
 puts multiply_numbers()  
puts multiply_numbers('ss')  
 puts multiply_numbers('1234')  
puts multiply_numbers('sssdd34') 
puts multiply_numbers(2.3)  
puts multiply_numbers([5, 6, 4]) 