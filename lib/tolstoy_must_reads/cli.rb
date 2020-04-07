class TolstoyMustReads::CLI
    def call
        puts 'Welcome! Here is a list of Tolstoy must reads:'
        get_books
        list_books
        user_interface # Or menu?
    end

    def get_books 
        @books = TolstoyMustReads::Book.all
    end

    def list_books
        @books.each.with_index(1) do |book, i|
            puts "#{i}. #{book.name}"
        end
    end

    def user_interface 
       @input = nil 
        while @input !=  "exit"
            puts "\nEnter the number of the book you would like a summary of or type list to see the books agin or type exit:"
            
            @input = gets.strip.downcase
            int = @input.to_i 

            if valid_int(int, @books)
                print_summary
            elsif @input.downcase == "list"
                list_books
            elsif @input.downcase == "exit"
                goodbye
            else
                invalid_inp 
            end
        end
    end

    def valid_int(int, data)
        int.to_i <= data.length && int.to_i > 0
    end

    def print_summary
        the_book = @books[@input.to_i - 1] 
        puts "\n#{the_book.summary}"
    end
    
    def invalid_inp
        puts "\nInvalid input."
    end

    def goodbye
        puts "\nGoodbye, have fun reading Tolstoy!"
    end
end