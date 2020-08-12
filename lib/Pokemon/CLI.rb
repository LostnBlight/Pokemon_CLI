=begin
class CLI

		def run
			welcome
			scrape
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
			puts "Please choose an option: "
			list_options
			input = gets.strip.downcase
			choose_option(input)
			return input
		end

		def list_options
			puts <<-DOC.gsub /^\s*/, ''
			1. List all Pokemon to get individual Information
			2. List Pokemon from least to greatest
			3. List Pokemon from greatest to least
			4. List pokemon least to great by stats
			5. List pokemon great to least by stats
			type 'close' to close the pokedex
			DOC
		end

		def choose_option(option)
			case option
			when "1"
				puts "All Pokemon Information"
				Og_pokemon.print_all
			when "2"
				puts " "
			when "3"
				puts " "
			when "4"
				puts " "
			when "5"
				puts " "
			when "6"
				puts " "
			when "7"
				puts " "
			end
		end

		def scrape
			Scraper.scrape_og
		end

	end
=end
