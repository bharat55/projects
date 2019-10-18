require "httParty"
require "nokogiri"

class Scraper
  attr_accessor :parse_page
  def initialize
    site = "http://store.nike.com/us/en_us/pw/mens-nikeid-lifestyle-shoes/1k9Z7puZoneZoi3"
    doc = httparty.get(site)
    @parse_page = nokogiri::HTML(doc)
    binding.pry

  end

end

