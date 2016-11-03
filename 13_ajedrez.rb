ajedrez = [["Torre-N", "Caballo-N", "Alfil-N", "Rey-N", "Reina-N", "Alfil-N", "Caballo-N", "Torre-N"],
           ["Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N"],
           ["Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro"],
           ["Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco"],
           ["Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro"],
           ["Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco"],
           ["Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B","Peón-B"],
           ["Torre-B", "Caballo-B", "Alfil-B", "Rey-B", "Reina-B", "Alfil-B", "Caballo-B", "Torre-B"]]

hash = {1=>"Torre", 2=>"Caballo", 3=>"Alfil", 4=>"Rey", 5=>"Reyna", 6=>"Peón", 7=>"Blanco", 8=>"Negro"}

def fichas(hash)
  array = []
  hash.each { |key, value| 
    until (key > 5) == true
      array << "#{value}"
      break
    end
  }
  if (array.length == 5) == true
    second = array.reverse.drop(2)
  end
  (array + second).flatten
end

fichass = fichas(hash)
p fichass

def peones(hash)
  array = []
  hash.each { |key, value| 
    if key == 6 
      8.times do array << ("#{value}") end
    end
  }
  array
end

p peones(hash)

def casillas(hash)
  array = []
  hash.each { |key, value|
    if key == 7 
      array << ("#{value}") 
    elsif key == 8   
      array << ("#{value}") 
    end
  }
  array*4
end

p casillas(hash)


def chess_maker
  chess = []
  fichas(hash)  
end

p chess_maker
