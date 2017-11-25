class Description < ApplicationRecord
    belongs_to :club
    validates :name, presence: true, length: { minimum: 5}
end
