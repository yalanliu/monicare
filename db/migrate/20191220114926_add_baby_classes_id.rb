class AddBabyClassesId < ActiveRecord::Migration[6.0]
  def change
    add_reference :children, :babyclass
  end
end
