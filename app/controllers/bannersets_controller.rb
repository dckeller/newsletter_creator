class BannersetsController < ApplicationController
	before_action :get_newsletter
	before_action :set_bannerset, only: [:show, :edit, :update, :destroy]

	def index
		@bannersets = @newsletter.bannersets
	end 

	def create
		@bannerset = @newsletter.bannersets.build(bannerset_params)
		@bannerset.save
		redirect_to @newsletter
	end

	def edit
		@newsletter = newsletter.find(params[:newsletter_id])
		@bannerset = Bannerset.find(params[:id])
	end

	def update
		@bannerset = Bannerset.find(params[:id])
		@bannerset.update(bannerset_params)
		redirect_to @newsletter
	end

	def destroy
		@bannerset = Bannerset.find(params[:id])
		@bannerset.destroy
		redirect_to @newsletter
	end

	private

		def bannerset_params
			params.require(:bannerset).permit(:display_img, :newsletter_id)
		end

		def get_newsletter
			@newsletter = Newsletter.find(params[:newsletter_id])
		end

		def set_bannerset
			@textlink = @newsletter.bannersets.find(params[:id])
		end       
end
