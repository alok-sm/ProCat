class AddColumnsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :if_bt, :boolean
    add_column :projects, :if_cs, :boolean
    add_column :projects, :if_cv, :boolean
    add_column :projects, :if_ee, :boolean
    add_column :projects, :if_ec, :boolean
    add_column :projects, :if_is, :boolean
    add_column :projects, :if_me, :boolean
    add_column :projects, :if_tc, :boolean
    add_column :projects, :if_bca, :boolean
    add_column :projects, :if_mca, :boolean
    add_column :projects, :if_mcs, :boolean
    add_column :projects, :if_mec, :boolean
    add_column :projects, :if_mme, :boolean
    add_column :projects, :if_mse, :boolean
    add_column :projects, :if_mwt, :boolean
    add_column :projects, :if_mba, :boolean

  end
end
