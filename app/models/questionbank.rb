class Questionbank < ApplicationRecord
    has_many :questions

    belongs_to :user, optional: true
end
