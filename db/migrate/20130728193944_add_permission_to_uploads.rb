class AddPermissionToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :permission, :integer
  end
end
