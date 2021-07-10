class ProductController < ApplicationController
	
	#this action for displaying product details
	def index
		if params[:status] == "Product Title"
			@product_select = params[:status]
			order_condition = "products.product_title"
		elsif params[:status] == "Customer Name"
			@product_select = params[:status]
			order_condition = "customers.customer_name"
		elsif params[:status] == "Category Name"
			@product_select = params[:status]
			order_condition = "categories.category_name"
		else
			@product_select = "Recent Product"
			order_condition = "products.created_at DESC"
		end

		@product_details = Product.joins(:customer).left_outer_joins(:category).paginate(page: params[:page], per_page: 2).order(order_condition)                                                                   
	end

	def new_and_edit_page
		if params[:id].blank?
	  		@task = Product.new
	  	else
	  		@task = Product.find(params[:id])
	  	end
	  	respond_to do |format|
	  		format.js
	  	end
	end

	#This action is for creating a new product
	def product_create
		values = task_params
		if !params[:customer_name].blank?
			customer = Customer.create(:customer_name => params[:customer_name])
			values[:customer_id] = customer.id
		end
		if !params[:category_name].blank?
			category = Category.create(:category_name => params[:category_name])
			values[:category_id] = category.id
		end
		@task_data = Product.new(values)
  		@task_data.save
  		redirect_to product_index_path
	end

	#This action is for updating a product
	def product_update
		values = task_params
		@task_data = Product.find(params[:id])
		if !params[:customer_name].blank?
			if @task_data.customer.blank?
				customer = Customer.create(:customer_name => params[:customer_name])
				values[:customer_id] = customer.id
			else
				@task_data.customer.update(:customer_name =>params[:customer_name])
			end
		end
		if !params[:category_name].blank?
			if @task_data.category.blank?
				category = Category.create(:category_name => params[:category_name])
				values[:customer_id] = category.id
			else
				@task_data.category.update(:category_name => params[:category_name])
			end
		end
		@task_data.update(values)
  		redirect_to product_index_path
	end

	#This action is for deleting a product
	def product_delete
		@task_data = Product.find(params[:id])
		@task_data.destroy
		redirect_to product_index_path
	end

	private

	  def task_params
	    params.require(:product).permit(:product_title, :recent_product, :category_id, :customer_id)
	  end
end
