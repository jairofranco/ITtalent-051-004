class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.float :user_localization_lat
      t.float :user_localization_long
      t.string :user_email
      t.string :user_rol
      t.string :user_password

      t.timestamps
    end
  end
end
