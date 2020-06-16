class Ship
    attr_accessor :name, :type, :booty
    @@all = []

    def initialize(attr_hash = {})
        attr_hash.each {|k,v| self.send("#{k}=", v)}
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end
end