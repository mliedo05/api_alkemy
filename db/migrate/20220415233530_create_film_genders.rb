class CreateFilmGenders < ActiveRecord::Migration[7.0]
  def change
    create_table :film_genders do |t|
      t.references :gender, foreign_key: true
      t.references :film, foreign_key: true

      t.timestamps
    end
  end
end
