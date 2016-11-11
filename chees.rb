def cheess
  hash = {0=>"Torre", 1=>"Caballo", 2=>"Alfil", 3=>"Rey", 4=>"Reina", 5=>"Alfil", 6=>"Caballo", 7=>"Torre"}
  array = [] 
    (0..7).each do |x| x
       hash.each do |key,value|   
       case x 
         when 0 then array << [x][key] = value+"-N"   
          when 1 then array << [x][key] = "Peón-N"
          when 2,4 then array << [x][key] = (key.even?) ? "Blanco" : "Negro"  
          when 3,5 then array << [x][key] = (key.odd?) ?  "Blanco" : "Negro"  
          when 6 then array << [x][key] = "Peón-B" 
          when 7 then array << [x][key] = value+"-B"
       end 
      end
    end
 #array.each_slice(8).to_a
 array[0..7].each {|item| printf("%-15s", "#{item}")}
 printf "\n"
 array[8..15].each {|item| printf("%-15s", "#{item}")}
 printf "\n"
 array[16..23].each {|item| printf("%-15s", "#{item}")}
 printf "\n"
 array[24..31].each {|item| printf("%-15s", "#{item}")}
 printf "\n"
 array[32..39].each {|item| printf("%-15s", "#{item}")}
 printf "\n"
 array[40..47].each {|item| printf("%-15s", "#{item}")}
 printf "\n"
 array[48..55].each {|item| printf("%-15s", "#{item}")}
 printf "\n"
 array[56..63].each {|item| printf("%-15s", "#{item}")}
 printf "\n"
    
    
  
end
cheess
# ==[["Torre-N", "Caballo-N", "Alfil-N", "Rey-N", "Reina-N", "Alfil-N", "Caballo-N", "Torre-N"],
#            ["Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N"],
#            ["Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro"],
#            ["Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco"],
#            ["Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro"],
#            ["Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco"],
#            ["Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B","Peón-B"],
#            ["Torre-B", "Caballo-B", "Alfil-B", "Rey-B", "Reina-B", "Alfil-B", "Caballo-B", "Torre-B"]]


