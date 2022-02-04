# Any reference that begins with an uppercase letter, including the names of classes and modules, is a constant.

module MyModule
  MyConstant = 'Outer constant'
  
  class MyClass
    MyConstant = 'Inner constant'
  end
end

# The Paths of Constants

# Constant's paths use a double colon as a separator

module M
  class C
    X = 'a constant'
  end

  C::X # => "a constant"
end

M::C::X # => "a constant"

# The Module class also provides an instance method and a class method that, confusingly, are both colled constants.
# Module#constants returns all constants in the current scope, like your file system's ls command.

puts M.constants
Module.constants.include? :Object # => true
Module.constants.include? :Module # => true

# Finally, if you need the current path, check out Module.nesting:
module M
  class C
    module M2
      Module.nesting # => [M::C::M2, M::C, M]
    end
  end
end