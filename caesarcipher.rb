# I have decided to go with a different approach by using a hash with each letter
# of the alphabet asigned to a number 

def caesar_cipher (string, shift_value)
    numbered_alphabet = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15, p: 16, q: 17, r: 18, s: 19, t: 20, u: 21, v: 22, w: 23, x: 24, y: 25, z: 26}
    numbered_alphabet.transform_keys! {|key| key.to_s}
    shifted_string_arr = [] # array for encrypted string letters to get pushed to
    string.split(//).each do | x | 
        alph_num = numbered_alphabet.fetch(x.downcase) # Find the number of the letter
        if shift_value + alph_num > 26 # Make sure it wraps arround
            alph_num -= 26
        end

        shifted_string_arr.push(numbered_alphabet.key(shift_value + alph_num))
    end
    puts shifted_string_arr.join('')
end

# Tests
puts "Normal string with a shift value of 2"
caesar_cipher("nothing",2)