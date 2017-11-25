class Club < ApplicationRecord
    validates :name, :layout, presence: true
    validates :layout, numericality: { only_integer: true}
end
