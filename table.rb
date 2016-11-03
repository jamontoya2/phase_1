table = []
titles = ["nombre","edad","genero","grupo","Calificaciones"]
alum_1 = ["Rodrigo García",13,"Masculino","Primero",[9,9,7,6,8]]
alum_2 = ["Fernanda Gonzalez",12,"Femenino","Tercero",[6, 9, 8, 6, 8]]
alum_3 = ["Luis Perez",13,"Masculino","Primero",[8, 7, 7, 9, 8]]  
alum_4 = ["Ana Espinosa",14,"Femenino","Segundo",[9, 9, 6, 8, 8]]      
alum_5 = ["Pablo Moran",11,"Masculino","Segundo",[7, 8, 9, 9, 8]]
table  << titles << alum_1 << alum_2 << alum_3 << alum_4 << alum_5    
p table 




p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6



