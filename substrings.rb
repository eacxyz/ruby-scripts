def substrings(string, dict)
	words = string.downcase.split(" ")
	dict.reduce(Hash.new(0)) do |hash, item|
		words.each do |word|
			if word.include?(item)
				hash[item] += 1
			end
		end
		hash
	end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)