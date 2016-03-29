class UsersController < ApplicationController
	
	def new
		@user = User.new
	end

	def index
		@users = User.all
	end
	def create
		@user = User.new(user_params)

		if @user.save
			redirect_to root_path
		else	
			render :new
		end
	end

	def select
		
	end
	private 

  def user_params
    params.require(:user).permit(:name, :job,:description)
  end

	
end