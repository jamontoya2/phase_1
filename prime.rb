def prime
require 'mathn'
lista = []
generador = Prime.new
  generador.each do |prime|
    lista << prime 
     break if lista.size = 100
  end
lista
end
prime
