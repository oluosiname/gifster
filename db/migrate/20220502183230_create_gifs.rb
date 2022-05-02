class CreateGifs < ActiveRecord::Migration[7.0]
  def change
    create_table :gifs do |t|
      t.integer :views, default: 0
      t.string :tags
      t.belongs_to :user
      t.timestamps
    end
  end
end
