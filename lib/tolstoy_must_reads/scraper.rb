# For each book on my website
# 


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


















# attr_accessor :book, :doc

# class TolstoyMustReads::Scraper
#     def initialize(summary)
#         @book = TolstoyMustReads::Book.new 
#         @book.summary = summary
#         @doc = Nokogiri::HTML(open("https://theculturetrip.com/europe/russia/#{summary}"))
#     end
# end 