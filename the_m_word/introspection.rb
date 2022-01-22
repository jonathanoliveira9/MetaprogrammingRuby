class Greeting
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def welcome
    text
  end
end

my_object = Greeting.new('Hello')

puts  my_object.class # Greeting

# Asked my_object about its class, and it replied in no uncertain terms: 'Im a Greeting'.
# Now I can ask the class for a list of its instance methods.

puts my_object.class.instance_methods(false)


puts my_object.instance_variables