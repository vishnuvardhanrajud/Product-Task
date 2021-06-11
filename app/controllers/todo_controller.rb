class TodoController < ApplicationController
	#this action for task details displaying
	def index
		@q = Todo.ransack(params[:q])
		if !params[:q].blank?
			if !params[:q][:title].blank?
				@q = Todo.ransack(params[:q][:title])
			end
		end
		@tasks = @q.result
	end

	def new_and_edit_page
		if params[:id].blank?
	  		@task = Todo.new
	  	else
	  		@task = Todo.find(params[:id])
	  	end
	  	respond_to do |format|
	  		format.js
	  	end
	end

	#This action is task details creating
	def task_create
		@task_data = Todo.new(task_params)
  		@task_data.save
  		redirect_to task_index_path
	end
	#This action is task details update
	def task_update
		@task_data = Todo.find(params[:id])
		@task_data.update(task_params)
  		redirect_to task_index_path
	end

	def task_update_iscomplete_status
		@task_data = Todo.find(params[:id])
		@task_data.update(:isComplete => true)
		@q = Todo.ransack(params[:q])
		@tasks = @q.result
  		respond_to do |format|
	  		format.js
	  	end
	end

	#This action is task details delete
	def task_delete
		@task_data = Todo.find(params[:id])
		@task_data.destroy
		redirect_to task_index_path
	end

	private

	  def task_params
	    params.require(:todo).permit(:title, :description,:isComplete)
	  end
end
