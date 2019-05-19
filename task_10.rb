=begin
Разработайте функцию count_words(string), которая будет возвращать хэш со
статистикой частоты употребления входящих в неё слов. 
=end


def count_words(str)
hash = {}
str.downcase!

str = str.split(" ")
  for x in str do
    x.gsub!(/\W/,'')
  end
str.delete_if{|word| word.empty?}

    until str.empty? do

             check = str[0]
             count = 0
     for y in str do
        if y == check
        count+=1
        end
     end
     ness = {}
     ness.store(check,count)
     hash.merge!(ness)
     str.delete_if{|y| y == check}
     count = 0
end
return hash
end


#puts count_words("A man, a plan, a canal -- Panama")

str = "A man, a plan, a canal -- Panama"
 puts count_words(str)
 str = "Doo bee doo bee doo"
 puts count_words(str)