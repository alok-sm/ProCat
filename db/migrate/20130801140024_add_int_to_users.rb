class AddIntToUsers < ActiveRecord::Migration
  def change
    add_column :users, :istate, :integer, :null => false, :default => 2
  end
end
