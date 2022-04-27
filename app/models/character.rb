class Character < ApplicationRecord
    has_many :film_characters
    has_many :films, through: :film_characters

    def self.character_by_name(name)
        Character.where('name ILIKE ?', "%#{name}%")
    end

    def self.character_by_age(age)
        Character.where(age:age)
    end

    def self.character_by_weight(weight)
        Character.where(weight:weight.to_f)
    end
    
    
end
