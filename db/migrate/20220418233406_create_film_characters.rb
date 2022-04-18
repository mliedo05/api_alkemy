class CreateFilmCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :film_characters do |t|
      t.references :film, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
