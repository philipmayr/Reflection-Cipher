# Reflection (Atbash) Cipher

require "readline"

puts "Enter alphabet letters one by one as an ordered list, without spaces, or press [enter] to use 26-letter Latin alphabet:"
alphabet = Readline.readline("➤ ", true).chars

if alphabet.length == 0
    alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
end

puts

alphabet_atbash_map = Hash.new
atbash = []
index = -1

puts "The reflected alphabet:"
print "➤ "

for character in alphabet do
    atbash.push(alphabet[index])
    alphabet_atbash_map[character] = alphabet[index]
    print alphabet[index]
    index -= 1
end

puts
puts

puts "Enter message to be enciphered:"
message = Readline.readline("➤ ", true).chars

puts

puts "Enciphered message:"
print "➤ "
enciphered_message = []

for character in message do
    enciphered_message.push(alphabet_atbash_map[character.to_s.upcase])
    print alphabet_atbash_map[character.to_s.upcase]
end

puts
puts

puts "Deciphered message:"
print "➤ "
deciphered_message = []

for character in enciphered_message do
    deciphered_message.push(alphabet_atbash_map.key(character))
    print alphabet_atbash_map.key(character)
end
