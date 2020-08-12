class CLIR

    def run
        scrape
        welcome
        while main_menu != 'close'
        end
        close_program
    end

    def welcome
        puts "     ---Welcome to the Pokedex---
        
        "
        end

    def close_program
        puts "The Pokedex is always open! Goodbye."
    end

    def main_menu
        puts "       What would you like to know? "
        list_options
        input = gets.strip.downcase
        choose_option(input)
        return input
    end

    def list_options
        puts <<-DOC.gsub /^\s*/, ''
        1. List all Pokemon to get individual Information.
        2. Top 10 best Pokemon by stats.
        3. Top 10 worst Pokemon by stats.
        4. Gives a random number to search Pokemon randomly.
        5. Search Pokemon by name.
        6. Search pokemon by number.

        If you'd like to close the Pokedex simply type 'close'
        DOC
    end

    def choose_option(option)
        case option
        when "1"
            puts "        ----All Pokemon Information----
            
            "
            Og_pokemon.print_all
        when "2"
            puts "       ----Ten Best Pokemon by Stats----
            
            "
            Og_pokemon.top_ten_best_pokemon
        when "3"
            puts "       ----Ten Worst Pokemon by Stats----
            
            "
            Og_pokemon.top_ten_worst_pokemon
        when "4"
            puts "       ----Type this number in option 6----
            
            "
            Og_pokemon.random_pokemon
        when "5"
            puts "       ----Enter First Gen Pokemon name----
            
            "
            input = gets.strip
            Og_pokemon.find_by_name(input)
        when "6"
            puts "       ----Enter First Gen Pokemon number i.e(001-151)----
            
            "
            input = gets.strip
            Og_pokemon.find_by_number(input)
        
        end
    end

    def scrape
        Scraper.scrape_og
    end

end