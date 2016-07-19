class CreateYorums < ActiveRecord::Migration
  def change
    create_table :yorums do |t|
      t.text :yorum

      t.timestamps null: false
    end
  end
end
