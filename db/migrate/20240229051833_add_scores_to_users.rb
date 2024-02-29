class AddScoresToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :scores, :json, default: {}
  end
end
