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
    Player.all.each_with_index{|player, i| puts "#{i+1}. #{player.name}"}
    #binding.pry
  end
end
