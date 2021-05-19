class Bored

    attr_accessor :id, :activity, :type, :participants, :price

    @@all = []
    
    def initialize(activity, type, participants, price)
        @id = id
        @activity = activity
        @type = type
        @participants = participants
        @price = price
        @@all << self
    end

    def self.all
        @@all
    end
end