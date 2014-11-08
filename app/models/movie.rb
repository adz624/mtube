class Movie < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  self.per_page = 4
end