class Board
# You should put here the given boards templates
  #@@board_one =[["POEMA", "CANCAON", "RONDAR", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
  @@board_one=[["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
  #@@board_one=[["ROJO", "VERDE", "AZUL", "NEGRO"],"ROJOXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
  def initialize
  complete_board!
  end

  def horizontal
  i = 0
  x = 0
    array = @array.each_slice(5).to_a
      while i < array.length  
        while x <= @@board_one[0].length - 1 
          a = @@board_one[0][x]
          b = array[i].join  
          c =  (b.match(a)) ? true : false          
            if c == true
              puts "La palabra #{@@board_one[0][x]} fue encontrada horizontalmente"
            end  
          x += 1
        end  
          x = 0
        i += 1
      end
   end
  
  def horizontal_inverso
  i = 0
  x = 0
    array = @array.each_slice(5).to_a
      while i < array.length  
        while x <= @@board_one[0].length - 1 
          a = @@board_one[0][x]
          b = array[i].reverse.join  
          c =  (b.match(a)) ? true : false          
            if c == true
              puts "La palabra #{@@board_one[0][x]} fue encontrada horizontalmente inverso"
            end  
          x += 1
        end  
        x = 0
        i += 1
      end
  end
  
  def vertical
  i = 0
  x = 0
    array = @array.each_slice(5).to_a.transpose
      while i < array.length  
        while x <= @@board_one[0].length - 1 
          a = @@board_one[0][x]
          b = array[i].join  
          c =  (b.match(a)) ? true : false          
            if c == true
              puts "La palabra #{@@board_one[0][x]} fue encontrada verticalmente"
            end  
          x += 1
        end  
        x = 0
        i += 1
      end
   end

  def diagonal
  arr = []
  x = 0
  j = 0
  array = @array.each_slice(5).to_a
  i = array.length - 2 
    while i >= 2 && j <= 4
      arr << array[i][j]
      j += 1
      i -= 1  
    end
    while x <= @@board_one[0].length - 1 
      if arr.join == @@board_one[0][x]
        puts "La palabra #{@@board_one[0][x]} fue encontrada diagonalmente"
      end
      x += 1
    end
  end

def diagonal_inversa
  arr = []
  x = 0
  j = 0
  array = @array.each_slice(5).to_a
  i = array.length - 2 
    while i >= 2 && j <= 4
      arr << array[i][j]
      j += 1
      i -= 1  
    end
    while x <= @@board_one[0].length - 1 
      if arr.reverse.join == @@board_one[0][x]
        puts "La palabra #{@@board_one[0][x]} fue encontrada diagonalmente inversa"
      end
      x += 1
    end
  end
  def vertical_inverso
  i = 0
  x = 0
  array = @array.each_slice(5).to_a.transpose
    while i < array.length  
      while x <= @@board_one[0].length - 1 
        a = @@board_one[0][x]
        b = array[i].reverse.join  
        c =  (b.match(a)) ? true : false          
          if c == true
            puts "La palabra #{@@board_one[0][x]} fue encontrada verticalmente inverso"
          end  
        x += 1
      end  
      x = 0
      i += 1
    end
  end 

  def to_s
  sala
  end

  private

  def complete_board!
  @array = @@board_one[1].split("")  
    @array.each do |word|
      if word == "X"
        word_to_change = ("A".."Z").to_a[(rand(26))] 
      end 
      word.gsub!(/X/){word_to_change}  
    end
  end

end

board = Board.new
board.to_s
board.horizontal
board.horizontal_inverso
board.vertical
board.vertical_inverso
board.diagonal
board.diagonal_inversa
