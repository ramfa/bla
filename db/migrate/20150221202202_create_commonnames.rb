class CreateCommonnames < ActiveRecord::Migration
  def change
    create_table :commonnames do |t|
      t.string :name
      t.belongs_to :kind, index: true

      t.timestamps null: false
    end
    add_foreign_key :commonnames, :kinds
  end
end
