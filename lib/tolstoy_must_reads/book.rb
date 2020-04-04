class TolstoyMustReads::Book
    def self.all
        # I should return a bunch of instances of books
        puts <<-DOC.gsub /^\s*/, ''
        1. Anna Karenina (1887)
        2. War and Peace (1869)
        DOC
    end
end