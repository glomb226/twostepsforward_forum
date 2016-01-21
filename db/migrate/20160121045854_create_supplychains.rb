class CreateSupplychains < ActiveRecord::Migration
  def change
    create_table :supplychains do |t|
      t.integer :user_id
      t.string :title
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
