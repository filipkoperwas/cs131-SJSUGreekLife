class Club < ApplicationRecord
    has_many :descriptions
    has_many :pictures
end
