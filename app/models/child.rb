class Child < ApplicationRecord
  belongs_to :babyclass
  has_many :child_teachers
  has_many :teachers, through: :child_teachers
end
