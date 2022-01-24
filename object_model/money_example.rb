require 'money'

bargain_price = Money.from_numeric(99, 'USD')
bargain_price.format # => '$99.00'

# As a shortcut, you can also convert any number to a Money object by calling Numeric#to_money:

stardard_price = 100.to_money('USD')
stardard_price.format # => '$100.00'
