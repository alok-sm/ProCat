class AddGuidesToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :guides, :text
  end
end
