class Book
# write your code here
    attr_reader :title

    def initialize(title=nil)
        if title 
            @title = title
        end
        
    end

    def title=(title)
        titles = title.split(' ')
        new_titles = [];
        ignore = ['and','do','a','an','in','the','of']
        titles.each_with_index { |title, index|
            if ignore.include?(title) && index != 0
                new_titles.push(title)
            else 
                new_titles.push(title.capitalize)
            end
        }
        @title = new_titles.join(' ')
    end

end
