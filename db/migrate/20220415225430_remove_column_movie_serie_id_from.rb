class RemoveColumnMovieSerieIdFrom < ActiveRecord::Migration[7.0]
  def change
    remove_column :genders, :movie_serie_id
  end
end
