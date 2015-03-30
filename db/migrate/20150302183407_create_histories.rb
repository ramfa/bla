class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.date :date
      t.text :signs
      t.text :treatment
      t.belongs_to :animal, index: true

      t.timestamps null: false
    end
    add_foreign_key :histories, :animals
  end
end
