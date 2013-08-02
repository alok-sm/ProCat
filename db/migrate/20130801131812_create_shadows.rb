class CreateShadows < ActiveRecord::Migration
  def change
    create_table :shadows do |t|
      t.text :code
      t.text :p_list
      t.text :g_list

      t.timestamps
    end
  end
end
