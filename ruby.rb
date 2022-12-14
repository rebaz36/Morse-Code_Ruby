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

# Test Cases
puts decode_char(".-") # returns "A"
puts decode_char("--.") # returns "G"
puts decode_char("---") # returns "O"
# end of test cases

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

# Test Cases
puts decode_word(".- .-.. .-..") # returns "ALL"
puts decode_word("--. --- --- -..") # returns "GOOD"
puts decode_word("--- -.") # returns "ON"
puts decode_word("- ---") # returns "TO"
# end of test cases

# Decode Message Function
def decode_message(morse_message)
morse_words = morse_message.split("   ")
decoded_message = ""
morse_words.each do |word|
decoded_message += decode_word(word) + " "
end
return decoded_message.strip
end
# end of decode_message function

# Test Cases
puts decode_message(".- .-.. .-..   --. --- --- -..   --- -.   - ---") # returns "ALL GOOD ON TO"
# end of test cases

# Final Test Case solving the question
puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...") # returns "A BOX FULL OF RUBIES"
