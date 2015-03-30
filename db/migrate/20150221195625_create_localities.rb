class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.string :name
      t.belongs_to :province, index: true

      t.timestamps null: false
    end
    add_foreign_key :localities, :provinces
  end
end
