class FixEmail < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :email, :userEmail
  end
end
