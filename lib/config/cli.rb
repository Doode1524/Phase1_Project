class Cli

    def start
        puts "--------------------------------------------------"
        puts "                                                  |"
        puts "--------------------------------------------------"
        puts "Welcome to Legend"
        puts "Legend is an app that gives base statistics on Champions in the MOBA game League of Legends!"
        puts "--------------------------------------------------"
        puts "                                                  |"
        puts "--------------------------------------------------"
        Api.load_data
    main_menu_options
    end

    def main_menu_options
        puts "Input '1' for a list of Champions."
        puts "Input '2' for filter options."
        puts "Type 'exit' to exit Legend."
        main_menu
    end

    def main_menu
        input = get_input
        if input == "1"
            list_champions
        elsif input == "2"
            filter_menu
        elsif input == "exit"
            exit
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
        print "Enter option: "
        gets.chomp
    end
    
    def champ_details(champion)
        puts "------------------------"
        puts "Champion: #{champion.name}"
        puts "Title: #{champion.title}"
        puts "Attack Rating: #{champion.attack}"
        puts "Magic Rating: #{champion.magic}"
        puts "Defense Rating: #{champion.defense}"
        puts "------------------------"
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
        main_menu_options
    end

    def filter_by_attack
        Champions.all.each.with_index(1) do |champion, index|
            if champion.attack > 5.0
                puts "#{index}. #{champion.name}: #{champion.attack}"
            end
        end
        champ_detail_menu
    end

    def filter_by_magic
        Champions.all.each.with_index(1) do |champion, index|
            if champion.magic > 5.0
                puts "#{index}. #{champion.name}: #{champion.magic}"
            end
        end
        champ_detail_menu
    end

    def filter_by_defense
        Champions.all.each.with_index(1) do |champion, index|
            if champion.defense > 5.0
                puts "#{index}. #{champion.name}: #{champion.defense}"
            end
        end
        champ_detail_menu
    end

    def filter_menu
        puts "Press '1' to see Attack Champions."
        puts "Press '2' to see Magic Champions."
        puts "press '3' to see Support Champions."
        filter_menu_input
    end

    def filter_menu_input
        input = get_input
        if input == "1"
            attack_champions
            main_menu_options
        elsif input == "2"
            magic_champions
            main_menu_options
        elsif input == "3"
            support_champions
            main_menu_options
        else
            main_menu_options
        end
    end

    def attack_champions
        filter_by_attack
        main_menu_options
    end

    def magic_champions
        filter_by_magic
        main_menu_options
    end

    def support_champions
        filter_by_defense
        main_menu_options
    end
end