class Game < ApplicationRecord
    belongs_to :room
    has_and_belongs_to_many :users, optional: true
end
