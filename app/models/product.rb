class Product < ActiveRecord::Base
	has_many :images, :dependent => :destroy
	belongs_to :category
	validates :name, :description, :price, presence: true 
	accepts_nested_attributes_for :images, reject_if: :all_blank, :allow_destroy => true
end