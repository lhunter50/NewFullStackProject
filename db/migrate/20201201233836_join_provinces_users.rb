class JoinProvincesUsers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :provinces do |t|
      t.index [:user_id, :province_id]
      t.index [:province_id, :province_id]
    end
  end
end
