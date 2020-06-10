puts "Input the string you would like encrypted"
sentance = gets.chomp.bytes
puts "What is the Caesar Cipher Number"
cipher = gets.chomp.to_i

def encrypt(sentance, cipher)
    print "Encrypted Sentance: "
    i = 0
    until i == sentance.length
        case sentance[i]
        when 97..122
            new_letter = (((sentance[i]-97) + cipher)%26)+97
            print new_letter.chr
        when 65..90
            new_letter = (((sentance[i]-65) + cipher)%26)+65
            print new_letter.chr
        else 
            print sentance[i].chr
        end
        i += 1
    end
    puts ""
end

encrypt(sentance, cipher)