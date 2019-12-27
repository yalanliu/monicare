class CreatePickUps < ActiveRecord::Migration[6.0]
  def change
    create_table :pick_ups do |t|
      t.string :name
      t.string :pick_up_pic
      t.string :relationship
      t.text :note
      t.belongs_to :child, null: false, foreign_key: true

      t.timestamps
    end
  end
end
