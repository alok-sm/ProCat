class AddStuffToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :patent_stuff, :text
    add_column :projects, :product_stuff, :text
    add_column :projects, :paper_stuff, :text
  end
end
