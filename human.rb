class Human
attr_accessor :strength, :intelligence, :stealth, :health
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def attack(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 10
        else
            puts "human attacked a non human"
        end
    end
end
class Wizard < Human
  # your code here
    @health = 50
    @intelligence = 25
        def heal
            @health +=10
            self
        end
            def fireball(obj)
                obj.health -=20
            end
end
class Ninja < Human
    @stealth = 175
    def steal
        @health += 10
    end
    def get_away
        @health -= 15
    end
end

class Samurai < Human
  # your code here
    @health = 200
        def death_blow(obj)
            obj.health = 0
        end
        def meditate
            @health = 200
        end
end
spencero= Ninja.new
spence = Wizard.new
dale = Samurai.new
#testing wizard heal

#puts "before healing"
#puts spence.health
#spence.heal
#puts "after healing"
#puts spence.health

#testing Wizard fireball
#puts "before fireball"
#puts spencero.health
#puts "after fireball"
#spence.fireball(spencero)
#puts spencero.health

#testing Ninja Stealth Method
=begin
puts "before steal method"
puts spencero.health
spencero.steal
puts "after steal method"
puts spencero.health
=end

#testing getaway method
=begin
puts "before get_away"
puts spencero.health
puts "after get_away"
puts spencero.get_away
puts spencero.health
=end

#testing deathblow
=begin
puts "health of ninja spencero before the death blow "
puts spencero.health
dale.death_blow(spencero)
puts "health of spencero after the death blow"
puts spencero.health
=end

#testing meditate
=begin
puts "before meditating health"
puts dale.health
puts "after meditating"
dale.meditate
puts dale.health
=end