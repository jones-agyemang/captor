# captor
Temperature monitoring tool

A company builds a temperature captor for freezers. These captors record temperature periodically and put the last values in an array. This library returns a value closest to zero, a unique temperature that's supposed to sum up these values.

## Usage
```ruby
require_relative 'lib/captor'

captor = Captor.new(readings: [7, -10, 13, 8, 4, -7.2, -12, -3.7, 3.5, -9.6, 6.5, -1.7, -6.2, 7])
puts captor.closest_to_zero
# => -1.7
```