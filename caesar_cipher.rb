# frozen_string_literal: true

# a-z: 97-122
# A-Z: 65-90

def caesar_cipher(string, shift)
  array = string.split('')
  new_arr = array.map do |c|
    num = c.ord + shift
    if c.ord < 65 || c.ord > 122 || (c.ord > 90 && c.ord < 97)
      c
    elsif num > 122
      num = num - 122 + 96
      num.chr
    elsif num > 90 && c.ord <= 90
      num = num - 90 + 64
      num.chr
    else
      num.chr
    end
  end
  new_arr.join('')
end

puts caesar_cipher('What a string!', 5)
puts caesar_cipher('What a string!', 26)
