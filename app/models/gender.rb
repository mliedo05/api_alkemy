class Gender < ApplicationRecord
  has_many :film_genders
  has_many :films, through: :film_genders
end
