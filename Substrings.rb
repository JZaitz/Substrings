class Searcher
  def self.substrings(str, arr)
  	answer_hash = {}
  	string_array = str.downcase.split(" ")

  	arr.each do |x|
  		answer_hash[x] = 0
  	end

  	string_array.each do |y|
  		if arr.include?(y)
  			answer_hash[y] += 1
  		end
  	end

  	answer_hash.each do |key, value|
  		if answer_hash[key] == 0   ### or## if value == 0
  			answer_hash.delete(key)
  		end
  	end
    puts "Here is your word frequency:"
  	puts answer_hash
  end
end

dictionary = ["below","down", "is", "go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts Searcher.substrings("below below is is", dictionary)
puts Searcher.substrings("Howdy partner sit down How is it going", dictionary)
