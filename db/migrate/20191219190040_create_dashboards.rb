class CreateDashboards < ActiveRecord::Migration[6.0]
  def change
    create_table :dashboards do |t|
      t.string :title
      t.text :content
      t.datetime :started_at
      t.datetime :finished_at
      t.string :parent_sign
      t.string :admin_sign
      t.integer :category

      t.timestamps
    end
  end
end
