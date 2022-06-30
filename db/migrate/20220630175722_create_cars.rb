class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :year
      t.text :enjoys
      t.text :image

      t.timestamps
    end
  end
end
