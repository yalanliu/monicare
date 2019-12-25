class Dashboard < ApplicationRecord
  enum category: [:medicine, :meal, :other]
  belongs_to :child
end
