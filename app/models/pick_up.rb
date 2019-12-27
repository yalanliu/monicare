class PickUp < ApplicationRecord
  belongs_to :child
  validates :name, presence: true
end
