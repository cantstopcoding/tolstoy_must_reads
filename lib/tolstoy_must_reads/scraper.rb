class TolstoyMustReads::Scraper
    def self.fetch
        page = "https://theculturetrip.com/europe/russia/articles/the-10-best-books-by-leo-tolstoy-you-have-to-read/"
        doc = Nokogiri::HTML(open(page))
        
        names = doc.css("h2.titlestyled__TitleWrapper-sc-11j6mg5-0.duRXkN").collect do |n|
            n.text
        end
        summaries = doc.css("p.paragraph-wraperstyled__ParagraphWrapper-sc-1xg03x1-0.gnTgqd").collect do |s|
            s.text
        end
        names.zip(summaries)
    end
end 
















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