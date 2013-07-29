class AddUrlToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :url, :text
  end
end
