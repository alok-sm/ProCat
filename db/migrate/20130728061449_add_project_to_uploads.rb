class AddProjectToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :project, :text
  end
end
