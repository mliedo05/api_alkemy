class CreateGenders < ActiveRecord::Migration[7.0]
  def change
    create_table :genders do |t|
      t.string :image
      t.string :name
      t.references :movie_serie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
