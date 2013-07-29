class Upload < ActiveRecord::Base
  # attr_accessible :title, :body
has_attached_file :file
attr_protected


end
