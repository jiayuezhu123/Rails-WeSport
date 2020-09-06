class PksController < ApplicationController
	before_action :authorize_pk, except: :all_pks

	def all_pks
		@pks = Pk.all
		authorize @pks
	end

	def my_pks
		@pks_one = Pk.find_by(user_one_id: params[:id])
		@pks_two = Pk.find_by(user_two_id: params[:id])
		authorize @pk
	end

	def show
		@pk = Pk.find(params[:id])
		authorize @pk
	end

	def create
		@pk = Pk.new(user_one_id: params[:id],
					 user_two_id: 3)
	end

	private
	def authorize_pk
    	@pk = Pk.find(params[:id])
    	authorize @pk
  	end

end
