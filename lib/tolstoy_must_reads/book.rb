class TolstoyMustReads::Book
    attr_accessor :name, :summary, :url

    def self.all
        books = TolstoyMustReads::Scraper.fetch.collect do |b|
            book = self.new
            book.name = b[0]
            book.summary = b[1]
            book  
        end
    end
end
