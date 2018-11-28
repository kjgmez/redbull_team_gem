class CLI
  def call
    welcome
    list_name
    puts "\nWich player would you like to know more about"
    ask_for_input
    until @input == "exit"
      more_info
      ask_for_input
    end
  end
  def welcome
    puts "Welcome to the Redbull Team line up!"
  end
  def list_name
    Scraper.new.make_player
    Player.all.each_with_index{|player, i| puts "#{i+1}. #{player.name}"}
    #binding.pry
  end
  def ask_for_input
    puts "\nPlease select between 1 and #{Player.all.length}"
    puts "To quit, type 'exit'."
    @input = gets.downcase.strip
    @input == 'exit' ? goodbye : check_for_input
  end
  def goodbye
    puts "Thanks for visiting the NYC Redbull Soccer team"
    exit
  end
  def check_for_input
    until @input.match(/^(\d)+$/) && @input.to_i.between?(0, Player.all.length) && @input != 'exit'
      puts "\nThe input you have typed is not a number within range"
      ask_for_input
    end
  end
  def more_info
    player = Player.all[@input.to_i - 1]
    puts "Player info is as follows:\n Position: #{player.position}\n Age: #{player.age}\n Height: #{player.height}"
  end
end
