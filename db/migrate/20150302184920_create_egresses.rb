class CreateEgresses < ActiveRecord::Migration
  def change
    create_table :egresses do |t|
      t.date :date
      t.text :cause
      t.text :reproduction
      t.integer :age
      t.text :causedeath
      t.text :observations
      t.belongs_to :animal, index: true

      t.timestamps null: false
    end
    add_foreign_key :egresses, :animals
  end
end
