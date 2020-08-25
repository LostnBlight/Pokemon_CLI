require "pry"
class Scraper
    URL = "https://pokemondb.net/pokedex/all"


    def self.scrape_og
        doc = Nokogiri::HTML(open(URL))
            pokemon_main = doc.css("tbody tr")
        pokemon_main[0..193].each do |pokemon_row_data|
            pokemon_number = pokemon_row_data.css("td")[0].text
            pokemon_name = pokemon_row_data.css("td")[1].text
            pokemon_type = pokemon_row_data.css("td")[2].text
            pokemon_stats = pokemon_row_data.css("td")[3].text

            #if (pokemon_name != "Chikorita")
                Og_pokemon.new({pokemon_number: pokemon_number, name: pokemon_name, type: pokemon_type, stats: pokemon_stats})
            #end
        end
    end  
end

