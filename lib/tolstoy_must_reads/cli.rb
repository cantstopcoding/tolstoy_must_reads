class TolstoyMustReads::CLI
    def call
        list_books
        menu
        goodbye
    end

    def list_books
        puts 'Welcome! Here is a list of Tolstoy must reads:'
        @books = TolstoyMustReads::Book.all 
        @books.each.with_index(1) do |book, i|
            puts "#{i}. #{book.name} - #{book.availability}"
        end
    end

    def menu 
        input = nil 
        while input !=  "exit"
            puts "Enter the number of the book you would like a summary of or type list to see the books agin or type exit:"
            input = gets.strip.downcase
            
            if input.to_i > 0
                the_book = @books[input.to_i - 1] 
                puts "#{the_book.name} - #{the_book.availability}"
                binding.pry
            elsif input == "list"
                list_books
            else
                puts "Not sure what you want, type list or exit:"
            end
        end
    end

    def goodbye
        puts "Goodbye!"
    end
end