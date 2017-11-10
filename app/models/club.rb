class Club < ApplicationRecord
    has_many :descriptions
    has_many :pictures
    validates :name, :layout, presence: true
    validates :layout, numericality: { only_integer: true}
end
