def diccionario
  keep = []
  print "Escribe una palabra que sea valida:\n"
  resul = gets.chomp
  analiza(resul) 
  if analiza(resul) == true
    diccionario
  else 
    until resul == "" do
      keep << resul  
      print "Escribe otra palabra(o presiona enter para finalizar)\n"
      resul = gets.chomp
    end       
      print "felicidades! tu diccionario tiene #{keep.length} palabras:\n"

      puts keep.sort_by {|i| i.downcase}
  end 
end       
def analiza(texto)
(texto == "" || texto =~ /\A\d+\Z/) ? true : false
end
diccionario

