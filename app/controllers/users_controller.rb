class UsersController < ApplicationController
	before_action :authorize_user, except: :index
	def index 
		@users = policy_scope(User)
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
	    @user = User.find(params[:id])
	    authorize @user
	    if @user.update(set_user)
	      redirect_to users_path(@user)
	      flash[:notice] = "Successfully updated!"
	    else
	      render :edit
	    end
	end

  private

  def set_user
    params.require(:user).permit(:username, :age, :gender, :weight)
  end

  def authorize_user
    @user = User.find(params[:id])
    authorize @user
  end

end
