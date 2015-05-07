class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.string :location
      t.string :space_size
      t.decimal :price
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
