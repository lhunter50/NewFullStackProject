class DropTablesAgain < ActiveRecord::Migration[6.0]
  def change
    drop_table :provinces_users
    drop_table :user_provinces
  end
end
