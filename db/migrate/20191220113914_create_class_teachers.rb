class CreateClassTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :class_teachers do |t|
      t.belongs_to :babyclass, null: false, foreign_key: true
      t.belongs_to :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
