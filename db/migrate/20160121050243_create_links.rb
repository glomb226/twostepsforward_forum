class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.integer :supplychain_id
      t.string :title
      t.text :body
      t.boolean :complete
      t.date :eta

      t.timestamps null: false
    end
  end
end
