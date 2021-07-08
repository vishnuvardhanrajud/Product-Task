class Product < ApplicationRecord
	belongs_to :customer, dependent: :destroy, foreign_key: "customer_id"
	belongs_to :category, dependent: :destroy, foreign_key: "category_id"
end


# Customer.create(:customer_name => "madhu")
# Customer.create(:customer_name => "babu")
# Customer.create(:customer_name => "ashok")
# Customer.create(:customer_name => "vishnu")
# Customer.create(:customer_name => "sarath")


# Category.create(:category_name => "electorincs")
# Category.create(:category_name => "gardges")
# Category.create(:category_name => "instruments")
# Category.create(:category_name => "fruits")
# Category.create(:category_name => "vehicals")


# Product.create(:product_title => "mobile", :recent_product => "buy mobie", :customer_id => "5", :category_id => "2")
# Product.create(:product_title => "Laptop", :recent_product => "laptop", :customer_id => "3", :category_id => "1")
# Product.create(:product_title => "shirt", :recent_product => "abc", :customer_id => "4", :category_id => "3")
# Product.create(:product_title => "apple", :recent_product => "fruite", :customer_id => "2", :category_id => "4")
# Product.create(:product_title => "paper", :recent_product => "new", :customer_id => "1", :category_id => "5")