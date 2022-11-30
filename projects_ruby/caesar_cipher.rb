test_string = "What a string!"

def caesar_chipher(text, num)
  shifter = num.to_i
  return text if shifter == 0
  alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
  
  
  if shifter > 0
    alphabet.reverse! 
    shifter = -shifter
  end
  
  if shifter.abs > 26
    shifter = -(shifter.abs % 26 )
  else
    shifter
  end

  text_arr = text.split("")

  chiphered_arr = text_arr.map do |letter|
    
    if letter.downcase !~ /[a-z]/
      letter  
    else
      
      if letter == letter.downcase
        shift_factor = alphabet.index(letter) + shifter
        alphabet[shift_factor]

      else
        shift_factor = alphabet.index(letter.downcase) + shifter
        alphabet[shift_factor].upcase
      end
    
    end
  end  
  
  chiphered_text = chiphered_arr.join

end

puts caesar_chipher(test_string, "-26")