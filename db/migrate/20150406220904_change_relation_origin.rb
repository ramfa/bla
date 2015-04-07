class ChangeRelationOrigin < ActiveRecord::Migration
  def change
  	rename_column :origins, :province_id, :locality_id
  end
end
