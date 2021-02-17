class NewslettersController < ApplicationController
	def index
		@newsletters = Newsletter.all
	end

	def show
		@newsletter = Newsletter.find(params[:id])
	end 

	def new
		@newsletter = Newsletter.new
	end

	def create
		@newsletter = Newsletter.new(newsletter_params)
		@newsletter.save
		redirect_to '/newsletters'
	end

	def edit
		@newsletter = Newsletter.find(params[:id])
	end

	def update
		@newsletter = Newsletter.find(params[:id])
		@newsletter.update(newsletter_params)
		redirect_to '/newsletters'
	end

	def destroy
		@newsletter == Newsletter.find(params[:id])
		@newsletter.destroy
		redirect_to 'newsletters'
	end

	private

	def newsletter_params
		params.require(:newsletter).permit(:gct_id, :adv_id, :adv_name, :send_date)
	end     
end
