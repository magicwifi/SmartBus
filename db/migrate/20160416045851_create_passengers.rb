class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :password
      t.string :password_confirmation
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
