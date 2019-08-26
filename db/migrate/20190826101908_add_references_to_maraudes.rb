class AddReferencesToMaraudes < ActiveRecord::Migration[5.2]
  def change
    add_reference :maraudes, :user, foreign_key: true
  end
end
