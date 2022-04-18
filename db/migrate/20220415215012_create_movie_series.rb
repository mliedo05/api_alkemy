class CreateMovieSeries < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_series do |t|
      t.string :image
      t.string :title
      t.date :premiere
      t.float :average

      t.timestamps
    end
  end
end
