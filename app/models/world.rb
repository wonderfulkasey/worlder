class World < ApplicationRecord
    has_many :characters
    validates :title, presence: true,
                    length: { minimum: 5 }
end
