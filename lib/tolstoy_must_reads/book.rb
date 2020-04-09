class TolstoyMustReads::Book
    attr_accessor :name, :summary
    
    def self.all
        books = TolstoyMustReads::Scraper.scrape_all.collect do |arr|
            book = self.new
            book.name = arr[0]
            book.summary = arr[1]
            book 
        end
    end
end


# I want to make an object one at a time
# I want to pass that object in the #all method everytime an object is created
# I want to make sure all of the objects I scraped are passed in the #all method
# I don't want to zip, I want to scrape the row













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