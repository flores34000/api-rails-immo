class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.decimal :longitude
      t.decimal :latitude
      t.text :description
      t.string :name
      t.decimal :price
      t.string :email

      t.timestamps
    end
  end
end
