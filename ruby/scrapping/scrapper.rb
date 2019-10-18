require "httparty"
require "nokogiri"
require "byebug"

def scraper
    site = "http://localhost:3000/"
    doc = HTTParty.get(site)
    parse_page = Nokogiri::HTML(doc)
    logo = parse_page.css('a.logo').text
    movies =
    byebug
end

scraper
