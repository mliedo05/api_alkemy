class Gender < ApplicationRecord
  has_many :film_genders
  has_many :films, through: :film_genders

  validates :name, presence: true

  def self.film_genders(gender_id)
    Gender.find(gender_id).films
  end
end
