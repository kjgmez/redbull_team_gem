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
end
