$increase_hatched_hours
class LayingHen
  attr_accessor :age
  
  def initialize
    @eggs = []
    @age = 0 
     
  end

  # Ages the hen one month, and lays 4 eggs if the hen is older than 3 months
  # edad de la gallna 1 mes y pone 4 huevos si la gallina es mayor a 4 meses
  def age!
     @age += 1

    if @age > 3 
      for i in 1..4
        @eggs << Egg.new
      end
    end
  end
           
  
  # Returns +true+ if the hen has laid any eggs, +false+ otherwise
  # devuelve true si la gallina ha puesto huevos y false en caso contrario
  def any_eggs?
    (@eggs.length > 0) ? true : false    
   
  end

  # Returns an Egg if there are any
  # devuelve un huevo si hay alguno
  # Raises a NoEggsError otherwise
  # aumenta un NoeggsError de lo contrario
  def pick_an_egg!
    raise NoEggsError, "The hen has not layed any eggs" unless self.any_eggs?

    # egg-picking logic goes here
    # la logica de la recoleccion de huevos aqui va
    @eggs.pop
  end

  # Returns +true+ if the hen can't laid eggs anymore because of its age, +false+ otherwise
  # Devuelve + true + si la gallina no puede poner huevos más debido a su edad, + false + de lo contrario.
  # The max age for a hen to lay eggs is 10 
  # La edad máxima para una gallina para poner huevos es 10
  def old?
  (@age > 10) ? true : false

  end


  def increase_hatched_hour(hours)
    $increase_hatched_hours = hours
  end

end




class Egg
# Initializes a new Egg with hatched hours +hatched_hours+
# Inicializa un nuevo huevo con horas eclosionadas + hatched_hours 

  def initialize
  
  end

 # Return +true+ if hatched hours is greater than 3, +false+ otherwise
 # Return + true + si las horas de eclosión son mayores que 3, + false + de lo contrario

  def rotten?
   ($increase_hatched_hours > 3) ? true : false
  end
end


hen = LayingHen.new
basket = []
rotten_eggs = 0

hen.age! until hen.any_eggs?
  puts "Hen is #{hen.age} months old, its starting to laid eggs."
  puts ""
  
   until hen.old?
     #The time we take to pick up the eggs
     hours = rand(10)
     hen.increase_hatched_hour(hours)
     
      while hen.any_eggs?
        egg = hen.pick_an_egg!

          if egg.rotten?
            rotten_eggs += 1
          else
            basket << egg
          end
      end
   puts "Month #{hen.age} Report"
   puts "We took #{hours} hour(s) to pick the eggs"
   puts "Eggs in the basket: #{basket.size}"
   puts "Rotten eggs: #{rotten_eggs}"
   puts ""
   # Age the hen another month
   hen.age!
 end

 puts "The hen is old, she can't laid more eggs!"
 puts "The hen laid #{basket.size + rotten_eggs} eggs"
 if rotten_eggs == 0
   puts "CONGRATULATIONS NO ROTTEN EGGS" 
 else
   puts "We pick to late #{rotten_eggs} eggs so they become rotten"
 end



