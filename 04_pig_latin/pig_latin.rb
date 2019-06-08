#write your code here



def translate(str, newWords=[])
    puts str
    words = str.split(' ')
    words.each_with_index { |word, index|
        i = word =~ /[aeiou]/
        qu = word =~ /qu/
        if qu && qu < i then newWords.push("#{word[qu+2..word.length-1]}#{word[0..qu+1]}ay")
        elsif i == 0 then newWords.push("#{word}ay")
        else newWords.push("#{word[i..word.length-1]}#{word[0..i - 1]}ay")
        end
    }
    puts newWords.join(' ')
    return newWords.join(' ')
end


