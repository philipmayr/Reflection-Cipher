# Reflection Cipher

require "readline"

puts "Enter alphabet letters one by one as an ordered list, no spaces:"
alphabet = Readline.readline("➤ ", true).chars

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

puts "The enciphered message:"
print "➤ "
enciphered_message = []

for character in message do
    enciphered_message.push(alphabet_atbash_map[character.to_s])
    print alphabet_atbash_map[character.to_s]
end

puts
puts

puts "The deciphered message:"
print "➤ "
deciphered_message = []

for character in enciphered_message do
    deciphered_message.push(alphabet_atbash_map.key(character))
    print alphabet_atbash_map.key(character)
end
