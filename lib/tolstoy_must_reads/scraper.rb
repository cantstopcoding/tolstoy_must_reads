class TolstoyMustReads::Scraper
    def self.scrape_all
        page = "https://theculturetrip.com/europe/russia/articles/the-10-best-books-by-leo-tolstoy-you-have-to-read/"
        @@doc = Nokogiri::HTML(open(page))
        
        self.scrape_names_and_summaries
        self.zip_names_and_summaries
    end

    def self.scrape_names_and_summaries
        @@doc.css("div.grid__Grid-u88k9r-0.article-grid__ArticleGrid-sc-5b0lbv-0.article-jsonstyled__ArticleV2ContentGrid-mn7kve-2.hquILT").collect do |parent_tag|
            names_tag = "div.cell__Cell-g0fptp-0.fORVIn"
            summaries_tag = "p.paragraph-wraperstyled__ParagraphWrapper-sc-1xg03x1-0.gnTgqd"
            
            @@names = parent_tag.css(names_tag).collect {|n| n.text}
            @@summaries = parent_tag.css(summaries_tag).collect {|s| s.text}
        end
    end

    def self.zip_names_and_summaries
        @@names.zip(@@summaries)
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