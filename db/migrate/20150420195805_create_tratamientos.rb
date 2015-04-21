class CreateTratamientos < ActiveRecord::Migration
  def change
    create_table :tratamientos do |t|
      t.date :fecha
      t.text :signos_clinicos
      t.belongs_to :commonname, index: true

      t.timestamps null: false
    end
    add_foreign_key :tratamientos, :commonnames
  end
end
