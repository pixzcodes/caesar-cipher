#Notes
# First i will create an array with the aplhabet that will be shifted 
# by the shift number called the shifted_alphabet
# Then i will compare each position of the shifted_alphabet to the 
# letters in the string
# I think if i asign each letter of the alphabet a number 0-25 then i
# can asign the letters in the string a shifted alphabet number to change to 
# Need to remember to add a caps check


def caesar_cipher (string, shift_value)
    shifted_alphabet = ('a'..'z').to_a
    i = 0
    while i < shift_value do
        shifted_alphabet.push(shifted_alphabet.shift)
        i += 1
    end
    
end

caesar_cipher("nothing",2)