class AddChildToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :child, null: false, foreign_key: true
  end
end
