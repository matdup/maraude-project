class AddAssoToMaraudes < ActiveRecord::Migration[5.2]
  def change
    add_reference :maraudes, :asso, foreign_key: true
    remove_column :maraudes, :user_id
  end
end
