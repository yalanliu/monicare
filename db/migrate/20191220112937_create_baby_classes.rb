class CreateBabyClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :babyclasses do |t|
      t.string :class
      t.string :class_pic

      t.timestamps
    end
  end
end
