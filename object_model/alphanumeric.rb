#def to_alphanumeric(s)
#  s.gsub(/[^\w\s]/, '')
#end
#
#
#class ToAlphanumericTest < Test::Unit::TestCase
#  def test_strip_non_alphanumeric_characters
#    assert_equal '3 the Magic Number', to_alphanumeric('#3, the *Magic, Number*?')
#  end
#end

# Open the String class and plants the to_alphanumeric method there:


class String
  def to_alphanumeric
    gsub(/[^\w\s]/, '')
  end
end


RSpec.describe 'String' do
  context 'strip non alphanumeric_characters' do
    it { expect('3 the Magic Number').to eq('#3, the *Magic, Number*?'.to_alphanumeric) }
  end
end
