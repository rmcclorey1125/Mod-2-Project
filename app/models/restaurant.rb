class Restaurant < ApplicationRecord
    belongs_to :restaurant_owner
    has_many :reviews
    has_many :users, through: :reviews
end
