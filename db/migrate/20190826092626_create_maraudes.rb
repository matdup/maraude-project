class CreateMaraudes < ActiveRecord::Migration[5.2]
  def change
    create_table :maraudes do |t|
      t.string :title
      t.string :description
      t.datetime :created_at
      t.datetime :updated_at
      t.float :ltd_starts
      t.float :lng_starts
      t.float :ltd_ends
      t.float :lng_ends
      t.string :address_start
      t.string :address_end
      t.string :capacity
      t.string :photo
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :status

      t.timestamps
    end
  end
end
