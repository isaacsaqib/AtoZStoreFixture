class Picture < ActiveRecord::Base

  belongs_to :listing

  do_not_validate_attachment_file_type :image

end