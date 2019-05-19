=begin
Адаптируйте ваше решение из Упражнения 1 так, чтобы вместо palindrome?("foo")
вы могли его использовать как "foo".palindrome? # => false.
=end

class String
  def palindrome?
    str = self.downcase.scan(/\w/)
    str == str.reverse
  end
end

class NilClass
      def palindrome?
          return false
      end
  end
  
  class Integer
      def palindrome?
          int = int.to_s
          int.palindrome?
      end
  end

    


puts "Madam, I'm Adam!".palindrome?

puts "A man, a plan, a canal -- Panama".palindrome?

puts nil.palindrome?

puts 1771.palindrome?

