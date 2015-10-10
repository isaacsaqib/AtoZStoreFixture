class Picture < ActiveRecord::Base

  belongs_to :listing

  has_attached_file :image,
    :path => ":rails_root/public/images/:id/:filename",
    :url  => "/images/:id/:filename"
    :storage => :s3,
            :bucket  => ENV['AWS_BUCKET']

  do_not_validate_attachment_file_type :image

end