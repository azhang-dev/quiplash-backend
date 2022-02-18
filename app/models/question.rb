class Question < ApplicationRecord
    belongs_to :questionbank, optional: true
    has_many :answers
end
