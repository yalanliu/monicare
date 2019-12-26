class AddChildToUser < ActiveRecord::Migration[6.0]
  def change
<<<<<<< HEAD
    add_reference :users, :child, foreign_key: true
=======
    add_reference :users, :child, null: false, foreign_key: true
>>>>>>> AddChildToUsers
  end
end
