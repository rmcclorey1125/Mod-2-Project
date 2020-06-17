class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant 

    validates :party, numericality: {less_than: 6}

    
end
