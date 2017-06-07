class Mammal
    #@@health = 150
    attr_accessor :name, :age, :health
    def initialize(name, age)
    @name = name
    @age = age
    @health = 150
    end
    def display_health
        puts "health is now #{@health}"
    end
end