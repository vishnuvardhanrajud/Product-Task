class Product < ApplicationRecord
	belongs_to :customer, dependent: :destroy, foreign_key: "customer_id"
	belongs_to :category, dependent: :destroy, foreign_key: "category_id"
end
