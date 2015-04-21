class CreateMedicins < ActiveRecord::Migration
  def change
    create_table :medicins do |t|
      t.string :nombre
      t.string :droga
      t.integer :cantidad
      t.belongs_to :tratamiento, index: true

      t.timestamps null: false
    end
    add_foreign_key :medicins, :tratamientos
  end
end
