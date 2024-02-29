class AddScoresToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :scores, :text
  end
end
