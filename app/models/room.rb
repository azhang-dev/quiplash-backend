class Room < ApplicationRecord
    has_many :games
    has_and_belongs_to_many :users, optional: true
end
