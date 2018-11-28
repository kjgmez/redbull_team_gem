class Scraper
  def get_page_player
    doc = Nokogiri::HTML (open("https://www.newyorkredbulls.com/players"))
  end
  def get_players
    self.get_page_player.css('li.row')
  end
end

#Scraper.new.make_player
