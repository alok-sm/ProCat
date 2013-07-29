class AddFilesToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :files, :text
  end
end
