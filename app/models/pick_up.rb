class PickUp < ApplicationRecord
  belongs_to :child
  validates :name, presence: true
  mount_uploader :pick_up_pic, AvatarRelativeUploader
end
