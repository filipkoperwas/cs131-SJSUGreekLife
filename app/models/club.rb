class Club < ApplicationRecord
    validates :name, :layout, presence: true
    validates :layout, numericality: { only_integer: true}
    has_many_attached :images
end
