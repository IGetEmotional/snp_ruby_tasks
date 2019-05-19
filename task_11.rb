=begin
Реализуйте класс Dessert c геттерами и сеттерами для полей класса name и
calories, конструктором, принимающим на вход name и calories, а также двумя
методами healthy? (возвращает true при условии калорийности десерта менее 200)
и delicious? (возвращает true для всех десертов).
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

p = Dessert.new("Napoleo", 550)
puts p.name
p.set_name("Nino")
puts p.name
puts p.healthy?
p.set_calories(180)
puts p.healthy?
puts p.delicious?