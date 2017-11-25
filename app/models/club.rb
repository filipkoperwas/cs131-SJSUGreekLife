class Club < ApplicationRecord
    has_many :descriptions, :dependent => :destroy
    has_many :pictures, :dependent => :destroy
    validates :name, :layout, presence: true
    validates :layout, numericality: { only_integer: true}
end
