class AddPermToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :perm, :string
  end
end
