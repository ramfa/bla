class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.date :dateof
      t.belongs_to :origin, index: true
      t.belongs_to :animal, index: true

      t.timestamps null: false
    end
    add_foreign_key :entries, :origins
    add_foreign_key :entries, :animals
  end
end
