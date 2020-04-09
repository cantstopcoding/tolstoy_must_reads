How to Build a CLI Gem

1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. Force that to build a CLI interface
5. Stub out the interface
6. Start making things real
7. Discover object
8. Program


- A command line interface for Tolstoy Must-Reads

user types in bin/tolstoy_must_reads

Show a list of books written by Tolstoy

Anna Karenina (1887)
War and Peace (1869)
The Kreutzer Sonata (1889)
The Death of Ivan Ilyich (1886)
Sevastopol Sketches (1855)
Resurrection (1899)
The Cossacks (1863)
A Confession (1882)
The Kingdom of God Is Within You (1894)
What I Believe (1885)

Which book do you want to know more about?
1

The greatest novel ever written according to top authors and laymen alike, Anna Karenina is the 1877 masterpiece which paints a glaringly vivid picture of contemporary Russian society. Tolstoy’s first self-proclaimed novel, Anna Karenina, tells the story of the eponymous Russian society woman who, initially trapped by societal conventions, dares to leave her loveless marriage for an illicit love and meets with tragic consequences. Another titan of Russian literature, Fyodor Dostoyevsky, described Anna Karenina as a “flawless work of art”, so if you’re only going to read one Tolstoy novel, this should probably be the one.



What is a book?

A book has a name
A book has a summary
A book has a URL
A book has an availability

Classes
    -CLI
        -Scraper
            -Book        


books = TolstoyMustReads.new("https://theculturetrip.com/europe/russia/articles/the-10-best-books-by-leo-tolstoy-you-have-to-read/").scrape #=> <Book>

books.first.name #=> "Anna Karrenina"

1. We need a Scraper class
2. That book needs to intantiate a book
3. We need to scrape the summary of that book
4. We need to scrape the summary of that book and add them to that instance



I want to refactor the zipping and do an object at a time
And I want to do my CLI better
	-Having a hard time because of the the goodbye method
	-I want to simplify the CLI even more
I want to find a way where I can only call the website once


# Anti-Pattern Experimenting

    # def initialize(url = nil)
    #     @url = url 
    # end

    # def scrape_book

    # end
    
    # def scrape_books 
    #     # For each book on my website homepage
    #     # get the book's data
    #     # instantiate a book based on that data
    #     book = TolstoyMustReads::Book.new 

    #     page = "https://theculturetrip.com/europe/russia/articles/the-10-best-books-by-leo-tolstoy-you-have-to-read/"
    #     @doc = Nokogiri::HTML(open(page))
    #     @doc.css("div.grid__Grid-u88k9r-0.article-grid__ArticleGrid-sc-5b0lbv-0.article-jsonstyled__ArticleV2ContentGrid-mn7kve-2.hquILT").each do |book_h2|
    #         book.name = book_h2.css("h2.titlestyled__TitleWrapper-sc-11j6mg5-0.duRXkN").text 
    #         book.summary = book_h2.css("p.paragraph-wraperstyled__ParagraphWrapper-sc-1xg03x1-0.gnTgqd").text
    #     end

    #     book.save
    # end



# Scraper Video Experimenting

# attr_accessor :book, :doc

# class TolstoyMustReads::Scraper
#     def initialize(summary)
#         @book = TolstoyMustReads::Book.new 
#         @book.summary = summary
#         @doc = Nokogiri::HTML(open("https://theculturetrip.com/europe/russia/#{summary}"))
#     end
# end 