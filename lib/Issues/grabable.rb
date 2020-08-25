require_relative "./goodlooks"
require "pry"
module Grabable

    module InstanceMethods
        def save
            self.class.all << self
        end
    end

    module DeepMethods
        include Goodlooks::Styles

        def print_all
            puts "#{self.add_spaces_back_front("Name")} |#{self.add_spaces_back_front("Number")} |#{self.add_spaces_back_front("Type")} |#{self.add_spaces_back_front("Stats")}"
            self.all.each_with_index do |og_pokemon,i|
                puts "#{0 + i}  #{self.add_spaces(og_pokemon.name)} | #{self.add_spaces(og_pokemon.pokemon_number)} | #{self.add_spaces(og_pokemon.type)} | #{self.add_spaces(og_pokemon.stats)}"
        end
        self.all
    end

        def top_ten_best_pokemon
            puts "10 Best Pokemon of First Gen!
            
            Name | Stats"
            arr = self.all.sort {|a,b| b.stats <=> a.stats}
            arr.each_with_index do |og_pokemon, i|
                puts "#{og_pokemon.name} #{og_pokemon.stats}"
                break unless i != 9
        end
    end

        def top_ten_worst_pokemon
            puts "10 worst Pokemon of First Gen!
            
            Name | Stats"
            arr = self.all.sort {|a,b| b.stats <=> a.stats}
            arr[184..-1].reverse.each_with_index do |og_pokemon, i|
                puts "#{og_pokemon.name} #{og_pokemon.stats}"
        end
    end

        def random_pokemon
            random = (rand*151).to_i
            formatted_random = "%03d" % random
                result = self.all.find{|pokemon| pokemon.pokemon_number.to_s == formatted_random}
            if result
                puts random
                puts "#{result.name}#{result.pokemon_number}#{result.type}#{result.stats}"
            end
        end

        def find_by_name(pokemon_name)
            result = self.all.find{|pokemon| pokemon.name.downcase == pokemon_name.downcase}
            if result
                puts "#{result.name}#{result.pokemon_number}#{result.type}#{result.stats}"
            else
                puts "#{pokemon_name} is not found in the Pokedex."
                puts "Please enter a First Gen Pokemon name."
                input = gets.strip.downcase.to_str
                input != 'exit' ? find_by_name(input) : nil
        end
    end

        def find_by_number(pokemon_number)
            result = self.all.find{|pokemon| pokemon.pokemon_number == pokemon_number}
            if result
                puts "#{result.name}#{result.pokemon_number}#{result.type}#{result.stats}"
            else
                puts "#{pokemon_number} is not found in the Pokedex."
                puts "Please enter a First Gen Pokemon by number."
                input = gets.strip.downcase.to_str
                input != 'exit' ? find_by_number(input) : nil
        end
    end



    end

end
