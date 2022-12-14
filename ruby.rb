# Description: Morse Code Decoder
# run: ruby ruby.rb

# Morse Code Decoder

# Decode Character Function
def decode_char(morse_char)
morse_code = {
".-" => "A",
"-..." => "B",
"-.-." => "C",
"-.." => "D",
"." => "E",
"..-." => "F",
"--." => "G",
"...." => "H",
".." => "I",
".---" => "J",
"-.-" => "K",
".-.." => "L",
"--" => "M",
"-." => "N",
"---" => "O",
".--." => "P",
"--.-" => "Q",
".-." => "R",
"..." => "S",
"-" => "T",
"..-" => "U",
"...-" => "V",
".--" => "W",
"-..-" => "X",
"-.--" => "Y",
"--.." => "Z"
}

return morse_code[morse_char].upcase
end

# end of decode_char function

puts decode_char(".-") # returns "A"
puts decode_char("--.") # returns "G"
puts decode_char("---") # returns "O"

# Decode Word Function
def decode_word(morse_word)
morse_chars = morse_word.split(" ")
decoded_word = ""

morse_chars.each do |char|
decoded_word += decode_char(char)
end

return decoded_word
end

# end of decode_word function

puts decode_word(".- .-.. .-..") # returns "ALL"
puts decode_word("--. --- --- -..") # returns "GOOD"
puts decode_word("--- -.") # returns "ON"
puts decode_word("- ---") # returns "TO"
