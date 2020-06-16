class Review < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant

    def review_show
        "#{self.user.username}\nRating: #{self.rating}\nReview:#{content}"
    end

end