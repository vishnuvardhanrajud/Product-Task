# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.create(:customer_name => "david")
Customer.create(:customer_name => "birbal")
Customer.create(:customer_name => "mike")
Customer.create(:customer_name => "vijay")
Customer.create(:customer_name => "sarath")


Category.create(:category_name => "electorincs")
Category.create(:category_name => "gardges")
Category.create(:category_name => "instruments")
Category.create(:category_name => "fruits")
Category.create(:category_name => "vehicals")


Product.create(:product_title => "mobile", :customer_id => "5", :category_id => "2")
Product.create(:product_title => "Laptop",:customer_id => "3", :category_id => "1")
Product.create(:product_title => "shirt", :customer_id => "4", :category_id => "3")
Product.create(:product_title => "apple", :customer_id => "2", :category_id => "4")
Product.create(:product_title => "paper", :customer_id => "1", :category_id => "5")
