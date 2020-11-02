class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.decimal :rating
      t.string :actor
      t.string :actress
      t.string :language

      t.timestamps
    end
  end
end
