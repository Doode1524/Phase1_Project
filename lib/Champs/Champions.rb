class Champions
    attr_accessor :name, :attack, :defence, :hp, :mp, :movespeed, :armor, :attackrange, :attackdamage, :title, :data

    @@all = []


    def initialize(name)
        @name = name
        @attack = attack

        
        
        # @attack = Api.get_stats["Attack"].uniq
        
        # self.name = data["Name"]        
        # self.attack = data["Attack"]        
        # self.defence = data["Defence"]        
        # self.hp = data["Hp"]        
        # self.mp = data["Mp"]        
        # self.movespeed = data["MoveSpeed"]       
        # self.armor = data["Armor"]       
        # self.attackrange = data["AttackRange"]        
        # self.attackdamage = data["AttackDamage"]        
        # self.title = data["Title"]

        @@all << self
    end

    def self.all
        @@all
    end




end
    