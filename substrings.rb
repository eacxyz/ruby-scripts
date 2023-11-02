# frozen_string_literal: true

def substrings(string, dict)
  words = string.downcase.split(' ')
  dict.reduce(Hash.new(0)) do |hash, item|
    words.each do |word|
      hash[item] += 1 if word.include?(item)
    end
    hash
  end
end

dict = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings('below', dict)
puts substrings("Howdy partner, sit down! How's it going?", dict)
