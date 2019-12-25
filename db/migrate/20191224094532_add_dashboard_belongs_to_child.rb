class AddDashboardBelongsToChild < ActiveRecord::Migration[6.0]
  def change
    add_reference :dashboards, :child
  end
end
