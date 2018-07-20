class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.string :email
      t.string :password_digest
      t.boolean :admin
      t.boolean :moderator

      t.timestamps
    end
  end
end
