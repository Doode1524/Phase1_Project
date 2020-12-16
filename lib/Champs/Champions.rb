class Champions
    attr_accessor :name, :magic, :attack, :defense, :title, :data

    @@all = []


    def initialize(name, magic, defense, title, attack)
        @name = name
        @attack = attack
        @magic = magic  
        @title = title
        @defense = defense
        @@all << self
    end

    def self.all
        @@all
       
    end
end
    