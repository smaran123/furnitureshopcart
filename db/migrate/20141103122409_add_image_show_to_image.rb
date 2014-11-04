class AddImageShowToImage < ActiveRecord::Migration
  def change
  	add_column :images, :image_show, :boolean, :default => true
  end
end