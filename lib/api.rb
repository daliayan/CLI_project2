require 'pry'

class Api

    attr_accessor :query

    def initialize(query)
        @query = query
    end


    def self.get_activity
        url = https://www.boredapi.com/api/activity
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)

        binding.pry
        array_of_activities = hash["activity"]

        array_of_activities.each do |activity_hash|

            activity_instance = Bored.new(id: activity_hash[:id])
            activity_instance.activity = activity_hash["activity"]
            activity_instance.type = activity_hash["type"]
            activity_instance.participants = activity_hash["participants"]
            activity_instance.price = activity_hash["price"]
        end
    end
end