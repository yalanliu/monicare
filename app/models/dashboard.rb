class Dashboard < ApplicationRecord
  enum categroy: [:medicine, :meal, :other]
end
