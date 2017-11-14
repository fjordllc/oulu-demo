class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :country_code, null: false
      t.text :address, null: false
      t.integer :gender, null: false
      t.boolean :married, null: false

      t.timestamps
    end
  end
end
