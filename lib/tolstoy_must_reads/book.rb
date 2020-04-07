class TolstoyMustReads::Book
    attr_accessor :name, :summary
    
    def self.all
        books = TolstoyMustReads::Scraper.fetch.collect do |b|
            book = self.new
            book.name = b[0]
            book.summary = b[1]
            book  
        end
    end
end












# Anti-Pattern Exp.
    # attr_accessor :name, :summary, :url

    # @@all = [] 

    # def save 
    #     @@all << self 
    # end 

    # def content
    #     @content ||= TolstoyMustReads.Scraper.new(url).scrape_book
    # end

    # def self.all
    #     @@all 
    # end 