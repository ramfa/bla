class Cambios2 < ActiveRecord::Migration
  def change
  	change_column :origins,:colector,:string
  end
end
