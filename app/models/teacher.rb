class Teacher < ApplicationRecord
  has_many :class_teachers
  has_many :babyclasses, through: :class_teachers

  has_many :child_teachers
  has_many :children, through: :child_teachers
end
