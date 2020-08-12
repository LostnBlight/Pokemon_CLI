require_relative "../Issues/grabable"

class Og_pokemon
    include Grabable::InstanceMethods
    extend Grabable::DeepMethods
    attr_accessor :name, :pokemon_number, :type, :stats 

    @@Og_pokemon = []

    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{key}="), value)}
        save
    end

    def self.all
        @@Og_pokemon
    end
end

