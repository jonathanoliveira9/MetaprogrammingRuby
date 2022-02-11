# When you call a method, Ruby looks into the object's class and finds the method there.

# The receivers is the object that you call a method on. For example, if you write my_string.reverse(), then my_string is the receiver.
# To understand the concept of an ancestors chain, look at any Ruby class. Then imagine moving from the class into its superclass,
# then into super-class's superclass, and so on, until you reach BasicObject, the root of the Ruby class hierarchy.
# The path of classes you just traversed is the ancestors chain of the class. (The ancestors chain also includes)

class MyClass
  def my_method; 'my_method()'; end
end

class MySubClass < MyClass
end

obj = MySubClass.new
obj.my_method()