class TolstoyMustReads::Book
    attr_accessor :name, :summary, :availability, :url   

    def self.all
        # scrape website and then return books based on that data
        self.scrape_books
        
        # book_1 = self.new
        # book_1.name = "Anna Karenina (1887)"
        # book_1.summary = "The greatest novel ever written according to top authors and laymen alike, Anna Karenina is the 1877 masterpiece which paints a glaringly vivid picture of contemporary Russian society. Tolstoy’s first self-proclaimed novel, Anna Karenina, tells the story of the eponymous Russian society woman who, initially trapped by societal conventions, dares to leave her loveless marriage for an illicit love and meets with tragic consequences. Another titan of Russian literature, Fyodor Dostoyevsky, described Anna Karenina as a “flawless work of art”, so if you’re only going to read one Tolstoy novel, this should probably be the one."
        # book_1.availability = true 
        # book_1.url = "https://theculturetrip.com/europe/russia/articles/the-10-best-books-by-leo-tolstoy-you-have-to-read/"
    
        # book_2 = self.new
        # book_2.name = "War and Peace (1869)"
        # book_2.summary = "At over 1,000 pages long and with 580 unique characters (some historical, many fictional), you’d be forgiven for skipping War and Peace in favor of something slightly less intimidating if you’re after a light, easy read. This masterpiece of Russian literature should not, however, be avoided lightly, as any who undertake this apparently mammoth task are sure to reap the abundant rewards buried within the pages of the dauntingly epic novel. Following the lives of a network of aristocratic Russian families at the time of Napoleon’s invasion, War and Peace was greatly influenced by the battle scenes in Victor Hugo’s Les Misérables."      
        # book_2.availability = true 
        # book_2.url = "https://theculturetrip.com/europe/russia/articles/the-10-best-books-by-leo-tolstoy-you-have-to-read/"
        
    end

    def self.scrape_books
        books = []
        books << scrape_website
        
        # Go to the website, find the book
        # Extract the properties
        # Instantiate a book
        books
    end

    def self.scrape_website
        page = "https://theculturetrip.com/europe/russia/articles/the-10-best-books-by-leo-tolstoy-you-have-to-read/"
        doc = Nokogiri::HTML(open(page))
    end
end
