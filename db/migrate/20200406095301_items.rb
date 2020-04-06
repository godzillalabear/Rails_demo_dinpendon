class Items < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :spec

      t.timestamps
    end

  end
end
