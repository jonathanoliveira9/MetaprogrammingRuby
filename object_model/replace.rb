# The Problem with Open Classes

def replace(array, original, replacement)
  array.map { |e| e == original ? replacement : e }
end

# Instead of focusing on the internal working of replace, you can look at Bookworm's unit tests to see
# how that method is supposed to be used:

RSpec.describe 'Replace' do  
  it 'test replace' do
    original = ['one', 'two', 'one', 'three']
    replaced = replace(original, 'one', 'zero')
    expect(replaced).to eq(%w(zero two zero three))
  end 
end

# Then you change all calls to replace into caslls To Array#replace. For example, the test becomes as follows

class Array
  def replace(original, replacement)
    self.map { |e| e == original ? replacement : e }
  end
end

RSpec.describe 'Array replace' do
  it 'test replace' do
    original = ['one', 'two', 'one', 'three']
    replaced = original.replace('one', 'zero')
    expect(replaced).to eq(%w(zero two zero three))
  end
end

# You save the test, you run Bookworm's unit test, and ...whoops! While test_replace does pass, other
# tests unexpectedly fail. To make things more perplexing, the failing tests seem to have nothing to do
# with the code you just edited. What gives?
# Class Array already has a method named replace . When you defined your own replace method, you inad-
# vertently overwrote the original replace , a method that some other part of Bookworm was relying on.