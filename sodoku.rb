class Sudoku
  @@tablero = ('702806519100740230005001070008000002610204053200000100070400800064078005821503907')

  def initialize
  end

  def tablero
  i = 0
  x = 8 
  
  array = @@tablero.split("")
    printf "-------------------------\n"
    while i <= array.length - 1
      array[i..x].each{|item| printf("%-3s", "#{item}")}
      printf "\n"
      if i == 2
        printf "-------------------------\n" 
      end
      i = x + 1
      x = x + 9  
      
    end
    printf "-------------------------\n"
  
end

end




game = Sudoku.new
game.tablero