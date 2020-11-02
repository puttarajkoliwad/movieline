class CreateMovieTheaters < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_theaters do |t|
      t.integer :movie_id
      t.integer :theater_id
    end
  end
end
