class Babyclass < ApplicationRecord
  # self.table_name = "babyclasses"
  has_many :class_teachers
  has_many :teachers, through: :class_teachers

end
