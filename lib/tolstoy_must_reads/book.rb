class TolstoyMustReads::Book
    attr_accessor :name, :summary
    
    @@all = []
   
    def initialize(name, summary)
        @name = name 
        @summary = summary
        save
    end
    
    def self.all
        TolstoyMustReads::Scraper.scrape_all.each do |titleEl|
            title = titleEl.text
            summary = titleEl.next_element.text
            self.new(title, summary)
        end 
        @@all 
    end

    def save 
        @@all << self
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