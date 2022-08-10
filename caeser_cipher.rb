
def caesar_cipher(string, shift_factor = 0)
    result = ''
    string.each_char do |char|
    #use shift on charcters only if they're letters
        if char.ord.between?(65, 90) || char.ord.between?(97, 122)
            new_ord = char.ord + shift_factor
            #wrap from Z to A or z to a
            new_ord -= 26 if (new_ord > 91 && char.ord < 91) || new_ord > 122
            result += new_ord.chr
        else
            result += char
        end
    end
    result
end

puts caesar_cipher('What a String!', 5)
