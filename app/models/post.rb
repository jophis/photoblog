class Post < ActiveRecord::Base
	validates_presence_of :title, :image
	paginates_per 5
	mount_uploader :image, PhotoUploader
end
