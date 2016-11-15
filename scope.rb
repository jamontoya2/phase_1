# local_var = "this is my local var"

# def
#  return_my_local_var
#  p local_var = "dentro del metodo"
# end
# return_my_local_var  

# class DummyClass
     
#   def initizalize
#      @local_var = "this is my local var"
#   end                 
  
#   def return_my_local_var
#    p @local_var = "dentro del metodo"
#   end

# end
# dummy = DummyClass.new
# dummy.return_my_local_var

#  class DummyClass
     
#   def initialize
#      @instance_var = "this is my local_var"
#   end                 
  
#   def instance_var
#     @instance_var
#   end
 
#   def instance_var=(value)
#     @instance_var = value
#   end

# end

# dummy = DummyClass.new
# p dummy.instance_var
# p dummy.instance_var = "metodo setter"

# class DummyClass
# @@class_variable = "This is a class variable"

#   def initialize
#      @instance_var = "this is my local_var"
#   end                 
  
#   def instance_var
#     @instance_var
#   end
 
#   def instance_var=(value)
#     @instance_var = value
#   end

#   def class_variable
#     @@class_variable
#   end

#   def class_variable=(value)
#     @@class_variable = value
#   end

# end

# dummy = DummyClass.new
# p dummy.instance_var
# p dummy.instance_var = "metodo setter"

# dummy_1 = DummyClass.new
# dummy_2 = DummyClass.new

# p dummy_1.class_variable
# p dummy_2.class_variable

# dummy_1.class_variable = "New value for the class value"
# #p dummy_2.class_variable = "an other new value"
# p dummy_2.class_variable

# $global_var = "This is a global variable" 
# CONSTANT = 3.1416

# def CONSTANT 
#   CONSTANT
# end

# genera error
# # def CONSTANT=(value)
# #   CONSTANT = 10
# # end
   
# def global_var
#   $global_var  
# end

#genera error
# # def global_var=(value) 
# #   $global_var = 50  
# # end

# genera error
# p CONSTANT
# p global_var
# # CONSTANT = 10
# # global_var = "new value"


# # dummy_1 = DummyClass.new
# # dummy_1.constant
# # dummy_1.global_var


class DummyClass
$global_var = "This is a global variable" 
CONSTANT = 3.1416

  def global_var
    $global_var  
  end

  def CONSTANT 
    CONSTANT
  end

  def global_var=(value)
    $global_var = value  
  end

  #error no se pyede cambiar el calor de una constante
  def CONSTANT=(value)
    CONSTANT = value 
  end

dummy_1 = DummyClass.new
p dummy_1.global_var
p dummy_1.CONSTANT
dummy_1.global_var = "new value global variable"
p dummy_1.global_var
dummy_1.CONSTANT = 3.14


