class FilmGender < ApplicationRecord
  belongs_to :gender
  belongs_to :film
end
