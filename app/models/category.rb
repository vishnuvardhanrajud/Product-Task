class Category < ApplicationRecord
	has_many :products, dependent: :destroy, foreign_key: "category_id"
end
