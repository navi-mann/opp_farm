class Farm



  def initialize(name)
    @name = name
    @corn = []
    @wheat = []
    @food_harvested = 0
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
    when 'harvest' then harvests_crops_adds_to_total
    when 'status' then display_info_about_farm
    when 'relax' then description_of_farm
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

    def harvests_crops_adds_to_total
      sum = 0
      @corn.each do |hectares|
        sum += hectares
      end
      total_corn = (sum * 20)
      if sum > 0
      puts "Harvesting #{total_corn} food from #{sum} corn field."
      end
        total = 0
      @wheat.each do |hectares|
        total += hectares
      end
      total_wheat = (total * 30)
      if total > 0
        puts "Harvesting #{total_wheat} food from #{total} wheat field."
      end
        @food_harvested += total_corn + total_wheat
    puts "The farm has #{@food_harvested} food so far."
    end

    def display_info_about_farm
      sum = 0
      @corn.each do |hectares|
        sum += hectares
      end
      puts "Corn field is #{sum} hectares."
      total = 0
    @wheat.each do |hectares|
      total += hectares
    end
    puts "Wheat field is #{total} hectares."
    puts "The farm has #{@food_harvested} harvested food so far."
    end

    def description_of_farm
      sum = 0
      @corn.each do |hectares|
        sum += hectares
      end
      puts "Corn field is #{sum} hectares."
      total = 0
    @wheat.each do |hectares|
      total += hectares
      end
      puts "#{sum} hectares of tall green stalks rustling in the breeze fill your horizon. The sun hangs low,casting an organe glow on a sea of #{total} hectares of wheat."
    end



end

farm = Farm.new("Navi's farm")
farm.main_menu
