class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.belongs_to :animal, index: true
      t.belongs_to :tratamiento, index: true

      t.timestamps null: false
    end
    add_foreign_key :histories, :animals
    add_foreign_key :histories, :tratamientos
  end
end
