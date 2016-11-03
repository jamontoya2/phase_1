def cat
arr = []
var = 0
  chess = Array.new(3){Array.new(3){""}}
    chess.each_index do |i|  
      chess[i].each_index do |x|   
        chess[i][x] = (rand(2) == 1) ? 5 : 4   
      end
    end 
 chess.flatten.inject(0,&:+) 
end

10000.times do |variable|
 p (cat == 40) ? "bingo" : "No bingo"
end




 




  




