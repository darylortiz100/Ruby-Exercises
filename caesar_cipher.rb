def caesar_cipher(userString, shift)

    #userString is to be shifted and shift is amount to be shifted
    to_be_shifted = userString.chars.map { |c| c.ord }
    shifted = to_be_shifted.map { |c| c + shift }

    i = 0
    while i < shifted.length do

        #for special characters
        if(shifted[i] <= 65)
            shifted[i] = (shifted[i] - shift)

        #for characters out of bounds greater than Z
        elsif(shifted[i] > 90) && (shifted[i] <= 97)
            shifted[i] = (shifted[i] - 26)

        #for characters out of bounds greater than z
         elsif(shifted[i] > 122) && (shifted[i] <= 127)
        shifted[i] = (shifted[i] - 26)

        end
        #iterate over next character in shifted user string
        i = i + 1
    end

    return shifted.map { |c| c.chr }.join

end


puts caesar_cipher("What a string!", 5)

# "Bmfy f xywnsl!"