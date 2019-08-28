class CreateAssos < ActiveRecord::Migration[5.2]
  def change
    create_table :assos do |t|
      t.string :name
      t.string :address
      t.string :photo
      t.string :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
