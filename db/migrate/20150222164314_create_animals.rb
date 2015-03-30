class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :weight
      t.integer :numbertag
      t.integer :microchip
      t.date :capturedate
      t.integer :age
      t.belongs_to :commonname, index: true

      t.timestamps null: false
    end
    add_foreign_key :animals, :commonnames
  end
end
