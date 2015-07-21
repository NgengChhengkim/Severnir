class Image < ActiveRecord::Base
  mount_uploader :image, PictureUploader
end
