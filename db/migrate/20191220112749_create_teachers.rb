class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :teacher_pic
      t.boolean :gender
      t.string :email
      t.string :address
      t.integer :tel

      t.timestamps
    end
  end
end
