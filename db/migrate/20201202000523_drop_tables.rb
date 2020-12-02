class DropTables < ActiveRecord::Migration[6.0]
  def down
    drop_table :provinces_users
  end

  def down
    drop_table :users_provinces
  end

end
