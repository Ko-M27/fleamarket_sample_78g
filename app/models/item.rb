class Item < ApplicationRecord
  belongs_to :user_buyer, class_name: 'User', :foreign_key => 'user_buyer_id', optional: true
  belongs_to :user_seller, class_name: 'User', :foreign_key => 'user_seller_id'
  belongs_to :category
  belongs_to :brand, optional: true
  has_many :images,dependent: :destroy
  has_many :comments
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :images, :category, :text, :name, :price, :status, :shipping_date, :shipping_fee, presence: true
end
