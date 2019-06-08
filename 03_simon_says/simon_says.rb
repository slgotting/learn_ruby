#write your code here

def echo (str)
    return str
end

def shout (str)
    return str.upcase
end

def repeat(str, count=2) 
    new_str = "#{str} " * count
    return new_str.chomp(' ')
end

def start_of_word(str, count)
    return str[0..count-1]
end

def first_word(str) 
    return str.split(' ')[0]
end

def titleize(str)
    no_cap = ['a', 'an', 'the', 'at', 'by', 'for', 'in', 'of', 'on', 'to', 'up', 'and', 'as', 'but', 'or', 'nor','over']
    words = str.split(' ')
    new_words = []
    words.each_with_index { |word, index|
        if no_cap.include?(word) && index != 0 then
            new_words.push(word)
        else 
            new_words.push(word.capitalize)
        end
    }
    return new_words.join(' ')
    
end