class Changerelationtratamiento < ActiveRecord::Migration
  def change
  	rename_column :tratamientos, :commonname_id, :animal_id
  end
end
