# Valid passowords are
# - 8 or more characters
# - include at least one of these characters: !, @, $, %, &

def valid?(password)
    symbol = ['!', '@', '$', '%', '&']
    counter = 0
    symbol.each do |element|
        if password.include?(element)
            counter += 1
        end
    end
    if counter >= 1 && password.length > 7
        return true
    else
        return false
    end
end




