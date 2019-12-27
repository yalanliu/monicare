class AddUserIdToChildren < ActiveRecord::Migration[6.0]
  def change
    add_reference :children, :user, foreign_key: true
  end
end
