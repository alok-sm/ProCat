class AddObjectiveToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :objective, :text
  end
end
