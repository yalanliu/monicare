class RenameBabyclassClassColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :babyclasses, :class, :nursery_class
  end
end
