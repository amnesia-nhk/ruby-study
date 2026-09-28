# frozen_string_literal: true

require_relative 'hash_map'

test = HashMap.new
test.set('apple', 'red')
test.set('banana', 'yellow')
test.set('carrot', 'orange')
test.set('dog', 'brown')
test.set('elephant', 'gray')
test.set('frog', 'green')
test.set('grape', 'purple')
test.set('hat', 'black')
test.set('ice cream', 'white')
test.set('jacket', 'blue')
test.set('kite', 'pink')
test.set('lion', 'golden')

p [test.length, test.capacity] # => [12, 16]

test.set('apple', 'crimson')
test.set('lion', 'mane')
p [test.length, test.capacity, test.get('apple')] # => [12, 16, "crimson"]

test.set('moon', 'silver')         # triggers growth
p [test.length, test.capacity]     # => [13, 32]

test.set('moon', 'pearl')
p [test.length, test.get('moon')]  # => [13, "pearl"]

p test.has?('moon')                # => true
p test.has?('zebra')               # => false
p test.remove('moon')              # => "pearl"
p test.remove('moon')              # => nil
p test.length                      # => 12
p test.keys.length                 # => 12
p test.values.length               # => 12
p test.entries.first
test.clear
p [test.length, test.keys]         # => [0, []]
