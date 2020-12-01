class Cli

    def start
        puts "Welcome to Legend"
        puts "Legend is an app that gives base statistics on Champions in the MOBA game League of Legends!"
        Api.load_data
    main_menu_options
    end

    def main_menu_options
        puts "Input '1' for a list of Champions"
        puts "Type 'exit' to exit Legend"
        main_menu
    end

    def main_menu
        input = get_input
        if input == "1"
            list_champions
            
        else
            main_menu_options
        end
    end

    def list_champions
        Champions.all.each.with_index(1) do |champion, index|
            puts "#{index}. #{champion.name}"
        end

        champ_detail_menu

    end

    def get_input
        print "Choose a champion: "
        gets.chomp
    end
    
    def champ_details(champion)
        Api.get_stats("Attack")
        puts "Attack Damage: #{champion.attack}"
    end

    def champ_detail_menu
        puts "Which Champions stats would you like to see?"
        champ_detail_list
    end

    def champ_detail_list
        input = get_input
        index = input.to_i - 1
        champ = Champions.all[index]
        champ_details(champ)



    end

end