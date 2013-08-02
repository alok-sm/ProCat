class AddSToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :comment_tmp, :text
  end
end
