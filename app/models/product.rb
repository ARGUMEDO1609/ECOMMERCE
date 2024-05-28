class Product < ApplicationRecord
  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [50, 50]
    attachable.variant :medium, resize_to_limit: [250, 250]
  end

  belongs_to :category
  has_many :stocks
  has_many :order_products
  #4149519a-9606-4d81-bc78-17c0f4cdf233 id order
  #2ad7e8a4-5e73-43b6-9dc1-b3ed24cc4628 id product
end
