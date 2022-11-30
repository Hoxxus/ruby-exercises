dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below", dictionary) #-> { "below" => 1, "low" => 1 }

def substrings(str, dict)
  sub_str = str.downcase.split(" ")
  rslt = Hash.new(0)

  sub_str.map do |element|
    dict.reduce(rslt) do |result, dict_element|
      result[dict_element] += 1 if element.match?(dict_element)
      result         
    end
  end
  
  rslt
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)