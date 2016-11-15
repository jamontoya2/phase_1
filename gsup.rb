def something
  'hello'
end

p something
#==> hello
something= 'Ruby'
p something
#==> Ruby #'hello' is not printed

###############

def some_var
    'I am a method' 
end

public :some_var # Because all methods defined at the top level are private by default
some_var = 'I am a variable'
p some_var # I am a variable
p some_var() # I am a method
p self.some_var # I am a method
A Useful Exercise to Detect
##############

v0 = 0
class SomeClass # Scope gate
  v1 = 1
  p local_variables # As the name says, it gives you all local variables in scope

  def some_method # Scope gate
    v2 = 2
    p local_variables
  end # end of def scope gate
end # end of class scope gate

some_class = SomeClass.new
some_class.some_method
#################

v0 = 0
SomeClass = Class.new do
  v1 = 1
  p local_variables

  define_method(:some_method) do
    v2 = 2
    p local_variables
  end
end

some_class = SomeClass.new
some_class.some_method

class SomeClass
  b = 'hello'
  @@m = 'hi'

  def initialize
    @some_var = 1
    c = 'hi'
  end

  def some_method
    p a = 'hello'
  end
end

some_object = SomeClass.new
some_object.some_method

