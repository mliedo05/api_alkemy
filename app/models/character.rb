class Character < ApplicationRecord
    has_many :film_characters
    has_many :films, through: :film_characters
end
