=begin
Создайте класс JellyBean, расширяющий класс Dessert (из Упражнения 11) новыми
геттерами и сеттерами для атрибута flavor. Измените метод delicious? таким
образом, чтобы он возвращал false только в тех случаях, когда flavor равняется
«black licorice».
=end

class Dessert
    attr_accessor:name, :calories
   def initialize(name, calories) 
       @name = name
       @calories = calories
    end
    
    def get_name
        @name
    end
    
    def get_calories
        @calories
    end
    
    def set_name(name)
        @name = name
    end
    
    def set_calories(calories)
        @calories = calories
    end
    
    def healthy?
        if self.calories <200
            return true
        else
            return false
        end
    end
    
    def delicious?
        return true
    end
end

class JellyBean < Dessert
    attr_accessor:flavor
    def initialize(name, calories, flavor)
       Dessert.new(name, calories)
        @flavor = flavor
    end
   def set_flavor(flavor)
       @flavor = flavor
   end
   def get_flavor
       return flavor
   end
   def delicious?
       if self.flavor == "black licorice"
           return false
       else 
          super
       end
   end
end
    




p = JellyBean.new("Napoleo", 550, "black licorice")
puts p.delicious?
p.flavor = "Nothing"
puts p.delicious?

