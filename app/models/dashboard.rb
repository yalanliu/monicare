class Dashboard < ApplicationRecord
  enum category: [:medicine, :meal, :misc]
  belongs_to :child
end
