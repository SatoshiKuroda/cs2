class Picture < ApplicationRecord
  belongs_to :player
  mount_uploader :picture, PictureUploader
end
