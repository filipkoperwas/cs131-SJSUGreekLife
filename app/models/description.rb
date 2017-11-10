class Description < ApplicationRecord
    belongs_to :club
    validates :name, presence: true
end
