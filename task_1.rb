=begin
Разработайте метод palindrome?(string), который будет определять, является ли
строка string палиндром (строкой, которая читается одинаково как с начала так и с
конца), при условии игнорирования пробелов, знаков препинания и регистра.
=end


def palindrome?(str)
    
    if str.is_a?String
    str.downcase!
    str.gsub!(/\W/, ' ')

      if str.include?(" ")
      str.delete!(" ")
      end

    end

    if !(str.is_a? String)and !(str.is_a? NilClass)
    str = str.to_s
    end
    if !(str.is_a? NilClass)
    ness = str.clone
    ness.reverse!
    return ness.eql?(str)
    else
    return false
    end
end


a = 1776
puts palindrome?(a)

b = "Madam, I'm Adam!"
puts palindrome?(b)

c = "No, sorry!"
puts palindrome?(c)

d = nil
puts palindrome?(d)

e = "A man, a plan, a canal -- Panama"
puts palindrome?(e)