def factor_iterativo(num)
  resul = 1
  i = 0
    while i <= num -1 
      resul = resul * (i += 1)     
    end  
  resul
end
p factor_iterativo(5)

def factor_recursivo(num)
  (num <= 1) ? 1 : num * factor_iterativo(num - 1) 
end
p factor_recursivo(5)