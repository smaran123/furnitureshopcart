	class Product < ActiveRecord::Base
	has_many :images, :dependent => :destroy
	belongs_to :category
	validates :name, :description, :price, :category, presence: true 
	validates :price, :numericality => {:only_float => true}
	accepts_nested_attributes_for :images, reject_if: :all_blank, :allow_destroy => true

    
    
    has_many :order_items

  default_scope { where(active: true) } 
    
    
    
end
