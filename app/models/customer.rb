class Customer < ApplicationRecord
	has_many :products, dependent: :destroy, foreign_key: "customer_id"
end
