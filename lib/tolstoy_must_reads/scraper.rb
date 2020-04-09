
class TolstoyMustReads::Scraper
    def self.scrape_all
        page = "https://theculturetrip.com/europe/russia/articles/the-10-best-books-by-leo-tolstoy-you-have-to-read/"
        doc = Nokogiri::HTML(open(page))
        parent_tage = doc.css("div.grid__Grid-u88k9r-0.article-grid__ArticleGrid-sc-5b0lbv-0.article-jsonstyled__ArticleV2ContentGrid-mn7kve-2.hquILT .fORVIn")
    end
end 
