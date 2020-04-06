class TolstoyMustReads::Book
    attr_accessor :name, :summary

    def self.all
        books = TolstoyMustReads::Scraper.fetch.map do |b|
            book = self.new
            book.name = b[0]
            book.summary = b[1]
            book  
        end
    end
end
