class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.string :name
      t.string :child_pic
      t.boolean :gender
      t.date :birthday
      t.string :email
      t.string :address
      t.integer :tel

      t.timestamps
    end
  end
end
