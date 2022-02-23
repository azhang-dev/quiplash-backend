class Questionbank < ApplicationRecord
    has_many :questions, optional: true

    belongs_to :user
end
