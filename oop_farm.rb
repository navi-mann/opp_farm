class Farm



  def initialize(name)
    @name = name
    @corn = []
    @wheat = []
  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.chomp.to_s
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts "Options: "
    puts 'field'
    puts 'harvest'
    puts 'status'
    puts 'relax'
    puts 'exit'
    puts 'Enter a selection:'
  end

  def call_option(user_selected)
    case user_selected
    when 'field' then adds_new_field
    # when harvest then harvests_crops_adds_to_total
    # when status then display_info_about_farm
    # when relax then description_of_farm
    when 'exit' then abort("Thank you for playing!")
    else
      puts "#{user_selected}is not an valid option"
    end
  end

  def adds_new_field
    print "What kind of field is it: corn or wheat? "
    corn_or_wheat = gets.chomp.to_s
    print "How large is the field in hectares? "
    hectares_size = gets.chomp.to_i
    puts "Added a #{corn_or_wheat} of #{hectares_size}!"
      if corn_or_wheat == "corn"
        @corn << hectares_size
      elsif corn_or_wheat == "wheat"
        @wheat << hectares_size
      end
    end


end

farm = Farm.new("Navi's farm")
farm.main_menu
