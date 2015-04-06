class Cambiarpeso < ActiveRecord::Migration
  def change
  	change_column :animals,:weight, :decimal
  end
end
