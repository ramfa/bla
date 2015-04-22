class AddAttachmentPhotoToTratamientos < ActiveRecord::Migration
  def self.up
    change_table :tratamientos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :tratamientos, :photo
  end
end
