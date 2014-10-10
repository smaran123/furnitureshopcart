class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :product_id
      t.attachment :avatar	
      t.timestamps
    end
  end
end