class Picture < ApplicationRecord
    belongs_to :club
    validates :name, :pic, presence: true
end
