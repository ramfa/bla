class Cambiarpeso < ActiveRecord::Migration
  def change
  	change_column :Animals,:weight, :decimal
  end
end
