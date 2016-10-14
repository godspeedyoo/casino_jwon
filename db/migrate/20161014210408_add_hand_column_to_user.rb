class AddHandColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :hand, :json
  end
end
