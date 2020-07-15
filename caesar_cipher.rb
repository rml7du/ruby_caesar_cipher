def encrypt(sentance, cipher)
    sentance = sentance.bytes
    cipher = cipher.to_i
    shifted_letters = ''
    i = 0
    until i == sentance.length
        case sentance[i]
        when 97..122
            new_letter = (((sentance[i]-97) + cipher)%26)+97
            shifted_letters << new_letter.chr
        when 65..90
            new_letter = (((sentance[i]-65) + cipher)%26)+65
            shifted_letters << new_letter.chr
        else 
            shifted_letters << sentance[i].chr
        end
        i += 1
    end
    print "Encrypted Sentance: #{shifted_letters}"
    puts ""
    return shifted_letters
end



=begin
puts "Input the string you would like encrypted"
sentance = gets.chomp
puts "What is the Caesar Cipher Number"
cipher = gets.chomp


encrypt(sentance, cipher)
=end