def caesar_encrypt(word, jump)
    finalArray =[]
    newArray = word.chars
    newArray.map do |n|
        if n.ord > 96 && n.ord < 123
            newWord = n.ord + jump%26
            if newWord > 123
                newWord = newWord -122 + 96
                finalArray.push(newWord.chr)
            else
                finalArray.push(newWord.chr)
            end
        elsif n.ord > 64 && n.ord < 91
            newWord = n.ord + jump%26
            if newWord > 123
                newWord = newWord -90 + 64
                finalArray.push(newWord.chr)
            else
                finalArray.push(newWord.chr)
            end
        else newWord = n.ord
            finalArray.push(newWord.chr)
        end
        
    end
    newString = finalArray.join("")
    puts newString

end
