class TolstoyMustReads::Book
    attr_accessor :name, :summary
    
    @@all = []
   
    def initialize(name, summary)
        @name = name 
        @summary = summary
        save
    end

    def save 
        @@all << self
    end 
    
    def self.all # Should this be a class or instance method?
        self.create_objects
        @@all 
    end

    def self.create_objects
        TolstoyMustReads::Scraper.scrape_all.each do |titleEl|
            title = titleEl.text
            summary = titleEl.next_element.text
            self.new(title, summary)
        end 
    end
end

