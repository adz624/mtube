class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, default: ''
      t.text :describe
      t.string :source, default: ''
      t.string :image
      t.timestamps
    end
  end
end
