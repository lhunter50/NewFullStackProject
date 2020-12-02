class JoinTablesUsersAndProvinces < ActiveRecord::Migration[6.0]
  def change
    add_column :province_users, :province_id, :int
    add_column :province_users, :user_id, :int

  end
end
