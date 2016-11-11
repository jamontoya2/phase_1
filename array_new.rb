def complete_board!
  #Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.
    
    p array =("POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR") 
      array.each do |word|
        if word == "X"
          word_to_change = ("A".."Z").to_a[(rand(26))] 
        end 
      word.gsub!(/X/){word_to_change}  
     end
   array
end

puts complete_board!
