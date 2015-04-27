class AddColummTratamiento < ActiveRecord::Migration
  def change
  	 add_column :tratamientos, :descripcion, :text
  end
end
