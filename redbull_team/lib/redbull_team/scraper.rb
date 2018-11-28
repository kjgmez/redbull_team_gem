class Scraper
  def get_page_player
    doc = Nokogiri::HTML (open("https://www.newyorkredbulls.com/players"))
  end
  end
# def print_players
#   self.make_player
#   Player.all.each  do |player|
#     puts "name: #{player.name}"
#     puts "position: #{player.position}"
#   end
# end
end

Scraper.new.make_player
