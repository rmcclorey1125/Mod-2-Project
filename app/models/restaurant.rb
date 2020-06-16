class Restaurant < ApplicationRecord
    belongs_to :restaurant_owner
    has_many :reviews
    has_many :users, through: :reviews
    has_many :reservations 

    def average_rating
        if self.reviews.count == 0
            "No Reviews Yet"
        else
            average = 0.0
                self.reviews.each do |rate|
                average += rate.rating   
            end      
        (average/reviews.count)
        end
    end

end
