class Question < ApplicationRecord
    belongs_to :questionbank, optional: true
    has_many :answers
    has_and_belongs_to_many :games, optional: true
end
