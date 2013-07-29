class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :p_title
      t.text :p_type1
      t.text :p_type2
      t.text :tags
      t.text :description
      t.text :requirements
      t.text :status
      t.date :start_date
      t.date :end_date
      t.text :messages
      t.text :outcome
      t.text :url_attatched
      t.boolean :if_award
      t.text :award_list
      t.boolean :if_patent
      t.boolean :if_product
      t.boolean :if_paper
      t.text :department

      t.timestamps
    end
  end
end
