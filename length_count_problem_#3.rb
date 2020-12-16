def letter_count sentence

  letter_arr = sentence.split("").reject {|letter| letter ==" "}
  letters_count = Hash[letter_arr.map {|letter| ["#{letter}",1]}]

  letter_arr.each do |letter|
    letters_count[letter] = letters_count[letter] + 1
  end

  return letters_count
end

puts(letter_count "hello how are you")