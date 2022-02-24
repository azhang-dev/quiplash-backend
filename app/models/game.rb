class Game < ApplicationRecord
    belongs_to :room
    has_and_belongs_to_many :users, optional: true
    has_and_belongs_to_many :questions, optional: true

end
