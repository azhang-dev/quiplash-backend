class Vote < ApplicationRecord
    belongs_to :answer, optional: true
end
