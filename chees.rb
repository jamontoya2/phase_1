def cheess
  hash = {0=>"Torre", 1=>"Caballo", 2=>"Alfil", 3=>"Rey", 4=>"Reina", 5=>"Alfil", 6=>"Caballo", 7=>"Torre"}
  array = Array.new(8){Array.new(8){""}}
    array.each_index do |x| x
      hash.each do |key,value|   
       case x 
         when 0 then array[x][key] = value+"-N"   
         when 1 then array[x][key] = "Peón-N"
         when 2,4 then array[x][key] = (key.even?) ? "Blanco" : "Negro"  
         when 3,5 then array[x][key] = (key.odd?) ?  "Blanco" : "Negro"  
         when 6 then array[x][key] = "Peón-B" 
         when 7 then array[x][key] = value+"-B"
       end 
      end
    end
end
p cheess ==[["Torre-N", "Caballo-N", "Alfil-N", "Rey-N", "Reina-N", "Alfil-N", "Caballo-N", "Torre-N"],
           ["Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N"],
           ["Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro"],
           ["Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco"],
           ["Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro"],
           ["Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco"],
           ["Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B","Peón-B"],
           ["Torre-B", "Caballo-B", "Alfil-B", "Rey-B", "Reina-B", "Alfil-B", "Caballo-B", "Torre-B"]]