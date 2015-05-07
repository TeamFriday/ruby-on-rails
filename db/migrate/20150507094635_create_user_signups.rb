class CreateUserSignups < ActiveRecord::Migration
  def change
    create_table :user_signups do |t|
      t.string :name
      t.integer :phone_no
      t.string :email
      t.string :password
      t.string :user_type

      t.timestamps null: false
    end
  end
end
