def pig_latin(text)
  new_array = text.split(" ")
  new_array.collect! do |word|
    if word[0] =~ (/[aeiou]/)
    word + "way"
    else
       i = word.index(/[aeiou]/)
       cons = word[0..i-1]
       word[i..-1] + cons + "ay"
    end
  end
  new_array.join(" ")
end
p pig_latin("armando montoya montoya")



able = [] 
titles = ["nombre","edad","genero","grupo","Calificaciones"]
alum_1 = ["Rodrigo García",13,"Masculino","Primero",[9,9,7,6,8]]
alum_2 = ["Fernanda Gonzalez",12,"Femenino","Tercero",[6, 9, 8, 6, 8]]
alum_3 = ["Luis Perez",13,"Masculino","Primero",[8, 7, 7, 9, 8]]  
alum_4 = ["Ana Espinosa",14,"Femenino","Segundo",[9, 9, 6, 8, 8]]      
alum_5 = ["Pablo Moran",11,"Masculino","Segundo",[7, 8, 9, 9, 8]]
table  << titles << alum_1 << alum_2 << alum_3 << alum_4 << alum_5    

new_array = []
encabezado = table[0]
table[1..-1].each do |i|
  hash = Hash.new
  indice_columna=0
    encabezado.each do |x|
      hash[x]= i[indice_columna]
      indice_columna += 1  
    end
  new_array << hash
end       
new_array

p new_array[0] == {"nombre"=>"Rodrigo García", "edad"=>13, "genero"=>"Masculino", "grupo"=>"Primero", "Calificaciones"=>[9, 9, 7, 6, 8]}
p new_array[1] == {"nombre"=>"Fernanda Gonzalez", "edad"=>12, "genero"=>"Femenino", "grupo"=>"Tercero", "Calificaciones"=>[6, 9, 8, 6, 8]} 
p new_array[2] == {"nombre"=>"Luis Perez", "edad"=>13, "genero"=>"Masculino", "grupo"=>"Primero", "Calificaciones"=>[8, 7, 7, 9, 8]}
p new_array[3] == {"nombre"=>"Ana Espinosa", "edad"=>14, "genero"=>"Femenino", "grupo"=>"Segundo", "Calificaciones"=>[9, 9, 6, 8, 8]}
p new_array[4] == {"nombre"=>"Pablo Moran", "edad"=>11, "genero"=>"Masculino", "grupo"=>"Segundo", "Calificaciones"=>[7, 8, 9, 9, 8]}
