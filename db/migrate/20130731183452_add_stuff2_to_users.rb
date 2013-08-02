class AddStuff2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :projects_g, :text
  end
end
