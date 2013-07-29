class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.string :code
      t.string :p_title

      t.timestamps
    end
  end
end
