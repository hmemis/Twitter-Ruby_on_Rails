class CreateTakipcis < ActiveRecord::Migration
  def change
    create_table :takipcis do |t|
      t.string :ad
      t.string :soyad

      t.timestamps null: false
    end
  end
end
