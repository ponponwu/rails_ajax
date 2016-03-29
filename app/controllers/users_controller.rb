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
		logger.info "====================="
		logger.info params[:job]
		logger.info "====================="


		# render :json => {contoller: params[:controller], action: params[:action]}.to_json
		respond_to do |format|
			format.js {
				@foo = "controller: #{params[:controller]}, action: #{params[:action]}"
				@bar = params;
			}
			format.html
		end
	end
	private 

  def user_params
    params.require(:user).permit(:name, :job,:description)
  end

	
end
