class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :category
      t.string :phone_number
      t.string :address
      t.string :name

      t.timestamps
    end
  end
end
