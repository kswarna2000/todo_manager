class AddTimestampsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :timestamps
  end
end
