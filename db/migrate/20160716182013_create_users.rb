class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :ad
      t.string :soyad
      t.text :adres
      t.string :email
      t.integer :telefon
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end
