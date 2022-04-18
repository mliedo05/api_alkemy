class Film < ApplicationRecord
    has_many :film_genders
    has_many :genders, through: :film_genders
    has_many :film_characters
    has_many :characters, through: :film_characters
end
