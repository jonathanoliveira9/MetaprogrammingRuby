# When you include a module in a class, Ruby inserts the module in the ancestors chain, right above the including class itself.

module M1
  def my_method
    'M1#mythod()'
  end
end

class C
  include M1
end

class D < C; end

puts D.ancestors # => [D, C, M1, Object, Kernel, BasicObject]

# Starting from Ruby 2.0, you also have a second way to insert a module in a class's chain of ancestors: the prepend method. It works like include, but
# it inserts the module below the including class.

class C2
  prepend M2
end

class D2 < C2; end 
puts D.ancestors # => [D2, M2, C2, Object, Kernel, BasicObject]