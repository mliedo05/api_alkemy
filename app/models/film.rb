class Film < ApplicationRecord
    has_many :film_genders
    has_many :genders, through: :film_genders
    has_many :film_characters
    has_many :characters, through: :film_characters

    def self.film_by_title(name)
        Film.where('title ILIKE ?', "%#{name}%")
    end

    def self.character_by_movie(movie_id)
        Film.find(movie_id).characters
    end
end
