class TolstoyMustReads::CLI
    def call
        list_books
        summary
        goodbye
    end

    def list_books
        puts 'Welcome! Here is a list of Tolstoy must reads:'
        puts <<-DOC.gsub /^\s*/, ''
        1. Anna Karenina (1887)
        2. War and Peace (1869)
        DOC
    end

    def summary 
        input = nil 
        while input !=  "exit"
            puts "Enter the number of the book you would like a summary of or type list to see the books agin or type exit:"
            input = gets.strip.downcase
            case input
            when "1"
                puts "The greatest novel ever written according to top authors and laymen alike, Anna Karenina is the 1877 masterpiece which paints a glaringly vivid picture of contemporary Russian society. Tolstoy’s first self-proclaimed novel, Anna Karenina, tells the story of the eponymous Russian society woman who, initially trapped by societal conventions, dares to leave her loveless marriage for an illicit love and meets with tragic consequences. Another titan of Russian literature, Fyodor Dostoyevsky, described Anna Karenina as a “flawless work of art”, so if you’re only going to read one Tolstoy novel, this should probably be the one."
            when "2"    
                puts "At over 1,000 pages long and with 580 unique characters (some historical, many fictional), you’d be forgiven for skipping War and Peace in favor of something slightly less intimidating if you’re after a light, easy read. This masterpiece of Russian literature should not, however, be avoided lightly, as any who undertake this apparently mammoth task are sure to reap the abundant rewards buried within the pages of the dauntingly epic novel. Following the lives of a network of aristocratic Russian families at the time of Napoleon’s invasion, War and Peace was greatly influenced by the battle scenes in Victor Hugo’s Les Misérables."      
            when "list"
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