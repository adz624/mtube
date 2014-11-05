class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, default: ''
      t.text :describe
      t.string :source, default: ''
      t.string :image
      t.boolean :published, default: false
      t.integer :likes, default: 0
      t.timestamps
    end
  end
end
