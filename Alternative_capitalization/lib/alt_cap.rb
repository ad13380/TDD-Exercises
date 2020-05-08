=begin
Given a string, capitalize the letters that occupy even indexes and odd indexes separately, and return as shown below. Index 0 will be considered even.

For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See test cases for more examples.

The input will be a lowercase string with no spaces.
=end
def capitalize(word)
  to_return = word.split("").map.with_index { |char,i|  i % 2 == 0 ? char.upcase : char}.join
  return [to_return, to_return.swapcase]
end

p capitalize("abc")
