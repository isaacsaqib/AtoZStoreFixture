class Listing < ActiveRecord::Base
	has_attached_file :image,
    :path => ":rails_root/public/images/:id/:filename",
    :url  => "/images/:id/:filename",
    :storage => :s3,
            :bucket  => ENV['AWS_BUCKET']
  	# validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	has_many :pictures, :dependent => :destroy


end
