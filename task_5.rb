=begin
  Разработать метод date_in_future(integer), который вернет дату через integer дней.
  Если integer не является целым числом, то метод должен вывести текущую дату.
  Формат возвращаемой методом даты должен иметь следующий вид '01-01-2001
  22:33:44’.
  Для работы со временем в языке Ruby рекомендуется использовать библиотеку
  active_support, которая расширяет его дополнительными методами, включая работу
  со временем.   
=end

require 'rubygems'
require 'date'
require 'active_support/core_ext/numeric/time'




def date_in_future(dayz = 0)

     x = Date.today+dayz.days

end
puts date_in_future()
puts date_in_future(16)