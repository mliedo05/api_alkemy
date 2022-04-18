class RenameMovieSerieToFilm < ActiveRecord::Migration[7.0]
  def change
    rename_table :movie_series, :films 
  end
end
