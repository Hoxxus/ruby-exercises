def caesar_chipher(text, num)
  shifter = num.to_i
  return text if shifter == 0
  alphabet = ('a'..'z').to_a
  
  
  if shifter < 0
    alphabet.reverse! 
    shifter = shifter.abs
  end

  text_arr = text.split("")

  chiphered_arr = text_arr.map do |char|
    
    if char.downcase !~ /[a-z]/
      char  
    
    else
      if char == char.downcase
        shift_factor = (alphabet.index(char) + shifter) % 26
        alphabet[shift_factor]

      else
        shift_factor = (alphabet.index(char.downcase) + shifter) % 26
        alphabet[shift_factor].upcase
      end
    end
  end  
  chiphered_text = chiphered_arr.join
end

#test_string = "What a string!"
test_string = "Bmfy f xywnsl!"

puts caesar_chipher(test_string, "-31")
