class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.text :colector
      t.string :address
      t.text :feeding
      t.text :capmethod
      t.text :features
      t.belongs_to :province, index: true

      t.timestamps null: false
    end
    add_foreign_key :origins, :provinces
  end
end
