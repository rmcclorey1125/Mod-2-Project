class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant 

    validates :party, numericality: {less_than: 6}
    validates :time, numericality: {greater_than: 0, less_than: 13}
    
end
